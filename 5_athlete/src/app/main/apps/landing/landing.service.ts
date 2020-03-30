import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { BehaviorSubject, Observable, Subject } from 'rxjs';
import { LocalsessionService } from '../../../services/localsession.service';

import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';

@Injectable()
export class LandingService implements Resolve<any>
{
    public LOGOUT_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}logout`;

    onSignInStateChanged: BehaviorSubject<any>;
    mode: string;

    constructor(
        private _httpClient: HttpClient,
        private _localSession: LocalsessionService
    ) {
        // Set the defaults
        this.onSignInStateChanged = new BehaviorSubject([]);
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any {
        this.mode = route.params.id;
        if (this.mode == '1') // do sign out
        {
            return new Promise((resolve, reject) => {
                Promise.all([this.doLogout()]).then(() => { resolve(); }, reject);
            });
        }
        else
        {
            return new Promise((resolve, reject) => {
                Promise.all([this.doEmpty()]).then(() => { resolve(); }, reject);
            });
        }
    }

    doLogout(): Promise<any> {
        let data: any = {};
        data['user_id'] = this._localSession.retrieveUserID();
        data['token'] = this._localSession.retrieveToken();

        return new Promise((resolve, reject) => {
            this._httpClient.post(this.LOGOUT_URL, data)
                .subscribe((response: any) => {
                    this.onSignInStateChanged.next(response);
                    resolve(response);
                }, reject);
        });
    }

    doEmpty():Promise<any>{
        return new Promise((resolve, reject) => {
           this.onSignInStateChanged.next('empty');
           resolve('empty');
        });
    }
}
