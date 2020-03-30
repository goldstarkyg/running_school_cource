import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { LocalsessionService } from '../../../services/localsession.service';

import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { BehaviorSubject, Observable } from 'rxjs';

@Injectable()
export class PTDetailService implements Resolve<any>
{
    personaltrainer: any;
    trainerID : string;

    onTrainerChanged: BehaviorSubject<any>;

    TRAINER_URL_BYID = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/personal/show/`;
    TRAINER_UPDATE_BYID = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/personal/update/`;
    // localhost/api/school/personal/show/68?token=MTU2MTAzODk4OTZyTUxhbURtSURVNWYxQ3RwdjJ4&user_id=1

    constructor(
        private _httpClient: HttpClient,
        private _localSession: LocalsessionService) {
        // Set the defaults
        this.onTrainerChanged = new BehaviorSubject({});
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any {
        this.trainerID = route.params.id;

        return new Promise((resolve, reject) => {
            Promise.all([ this.getTrainer() ]).then( () => { resolve();}, reject );
        });
    }

    getTrainer(): Promise<any> {
        let token = 'MTU2MzQ0Mzk2NDBISmxCVDk1TVdVSzhzcHhROWtS'; // deploy version
        let user_id = '83';
        // let token = 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx'; // localhost
        // let user_id = '1';

        let data: any = {};
        data['token'] = token;
        data['user_id'] = user_id;

        return new Promise((resolve, reject) => {
            this._httpClient.post(this.TRAINER_URL_BYID + this.trainerID, data)
                .subscribe((response: any) => {
                    this.personaltrainer = response;

                    this.onTrainerChanged.next(this.personaltrainer);
                    resolve(response);
                }, reject);
        });
    }
}
