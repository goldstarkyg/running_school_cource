import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { Injectable, isDevMode } from '@angular/core';
import { LocalsessionService } from '../../../services/localsession.service';
import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';
import { BehaviorSubject, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})

export class PTActivityService implements Resolve<any> {
  public _COURSE_LIST_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/course/list`;
  
  onCoursesChanged: BehaviorSubject<any>;
  
  constructor(private httpClient: HttpClient, private _localSession: LocalsessionService) {
    this.onCoursesChanged = new BehaviorSubject({});
  }
  
  resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any
  {
      return new Promise((resolve, reject) => {
          Promise.all([ this.getCourses(),]).then( () => { resolve(); }, reject );
      });
  }

  getCourses(): Promise<any> {
    let data: any = {};
    let token = 'MTU2MzQ0Mzk2NDBISmxCVDk1TVdVSzhzcHhROWtS'; // deploy version
    let user_id = '83';
    // return 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx';
    // let token = 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx'; // localhost
    // let user_id = '1';

    data['token'] = token;
    data['user_id'] = user_id;
    // data['role'] = '0';

    return new Promise((resolve, reject) => {
      this.httpClient.post(this._COURSE_LIST_URL, data)
        .subscribe((response: any) => {
          this.onCoursesChanged.next(response);
          resolve(response);
        }, reject);
    });
  }

}
