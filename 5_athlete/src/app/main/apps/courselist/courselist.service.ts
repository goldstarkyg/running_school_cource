import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { BehaviorSubject, Observable, Subject } from 'rxjs';
import { LocalsessionService } from '../../../services/localsession.service';

import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';

@Injectable()
export class CourseListService implements Resolve<any>
{
    public COURSELIST_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/course/listbypos`;
    public SCHOOLLIST_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/listbypos`;
    
    onCourseListChanged: BehaviorSubject<any>;
    onSchoolListChanged: BehaviorSubject<any>;

    courseList: any[] = [];

    currentLat : string;
    currentLong: string;

    constructor(
        private _httpClient: HttpClient,
        private _localSession: LocalsessionService
    ) {
        // Set the defaults
        this.onCourseListChanged = new BehaviorSubject([]);
        this.onSchoolListChanged = new BehaviorSubject([]);
    }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any {
        if( route.params.lat)
            this.currentLat = route.params.lat;

        if( route.params.long)
            this.currentLong = route.params.long;

        return new Promise((resolve, reject) => {
            Promise.all([ this.getCourses(), this.getSchools() ]).then( () => { resolve(); }, reject );
        });
    }
       
    getCourses(): Promise<any> {
        let data: any = {};
        let token = 'MTU2MzQ0Mzk2NDBISmxCVDk1TVdVSzhzcHhROWtS'; // deploy version
        let user_id = '83';
        // let token = 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx'; // localhost
        // let user_id = '1';

        data['user_id'] = user_id;
        data['token'] = token;
        data['status'] = '1';
        data['lati'] = this.currentLat;
        data['longi'] = this.currentLong;
     
        return new Promise((resolve, reject) => {
            this._httpClient.post(this.COURSELIST_URL, data)
                .subscribe((response: any) => {
                    this.onCourseListChanged.next(response);
                    resolve(response);
                }, reject);
        });
    }
    
    getSchools(): Promise<any> {
        let data: any = {};
        let token = 'MTU2MzQ0Mzk2NDBISmxCVDk1TVdVSzhzcHhROWtS'; // deploy version
        let user_id = '83';
        // let token = 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx'; // localhost
        // let user_id = '1';

        data['user_id'] = user_id;
        data['token'] = token;
        data['status'] = '1';
        data['lati'] = this.currentLat;
        data['longi'] = this.currentLong;
     
        return new Promise((resolve, reject) => {
            this._httpClient.post(this.SCHOOLLIST_URL, data)
                .subscribe((response: any) => {
                    this.onSchoolListChanged.next(response);
                    resolve(response);
                }, reject);
        });
    }
}
