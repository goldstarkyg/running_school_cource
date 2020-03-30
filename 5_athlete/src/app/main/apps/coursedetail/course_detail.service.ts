import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { BehaviorSubject, Observable, Subject } from 'rxjs';
import { LocalsessionService } from '../../../services/localsession.service';

import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';

@Injectable()
export class CourseDetailService implements Resolve<any>
{
    public COURSELIST_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/course/detail/`;
    
    onCourseContentPrepared: BehaviorSubject<any>;
    courseList: any[] = [];

    currentLat : string;
    currentLong: string;
    public course_id: string;

    constructor( private _httpClient: HttpClient,
        private _localSession : LocalsessionService ) {
        // Set the defaults
        this.onCourseContentPrepared = new BehaviorSubject([]);
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any {
        this.currentLat = route.params.lat;
        this.currentLong = route.params.long;
        this.course_id = route.params.id;

        return new Promise((resolve, reject) => {
            Promise.all([ this.getCourseDetail(this.course_id) ]).then( () => { resolve(); }, reject );
        });
    }
       
    getCourseDetail(course_id): Promise<any> {
        let token = 'MTU2MzQ0Mzk2NDBISmxCVDk1TVdVSzhzcHhROWtS'; // deploy version
        let user_id = '83';
        // return 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx';
        let data: any = {};
        // let token = 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx'; // localhost
        // let user_id = '1';

        this.course_id = course_id;

        if ( this._localSession.retriveIsAthleteLogin() == 'true' )
        {
            data['user_id'] = this._localSession.retrieveUserID();
            data['token']   = this._localSession.retrieveToken();
        }
        else{
            data['user_id'] = user_id;
            data['token']   = token;
        }
        
        data['status']      = '1';
        return new Promise((resolve, reject) => {
            this._httpClient.post(this.COURSELIST_URL + this.course_id, data)
                .subscribe((response: any) => {
                    this.onCourseContentPrepared.next(response);
                    resolve(response);
                }, reject);
        });
    }
    
}
