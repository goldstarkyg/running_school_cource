import { environment as env } from '../../environments/environment';
import { environment as envProd } from '../../environments/environment.prod';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable, isDevMode } from '@angular/core';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

import { InterceptorSkipHeader } from './http.request.interceptor';
import { LocalsessionService } from '../services/localsession.service';

@Injectable({
  providedIn: 'root'
})

export class GlobalService {
  public g_nDisplySchoolMode : Number;
  public g_nDisplyTrainerMode : Number;
  public g_nTrainerID : Number;
  public g_nSchoolID : Number;
  
  public GETSCHOOLID_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/getschoolname`;
  public LOGOUT_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}logout`;
  public PAYPAL_INFORM = `${isDevMode() && env.baseUrl || envProd.baseUrl}pay/inform`;

  constructor( private httpClient: HttpClient, private _localSession : LocalsessionService ) { 
    this.g_nDisplySchoolMode = 0; // 0: list, 1 : add
    this.g_nDisplyTrainerMode = 0; // 0: list, 1 : add

    this.g_nTrainerID = 0;
    this.g_nSchoolID = 0;
  }

  getSchoolFromUser(data) {
    const headers = new HttpHeaders().set(InterceptorSkipHeader, '');
    return this.httpClient.post(this.GETSCHOOLID_URL, data, { headers }).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }
  
  logOut() {
    let data: any = {};
    data['user_id'] = this._localSession.retrieveUserID();
    data['token'] = this._localSession.retrieveToken();
    
    return this.httpClient.post(this.LOGOUT_URL, data ).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }

  getPayInform(data) {
    const headers = new HttpHeaders().set(InterceptorSkipHeader, '');
    return this.httpClient.post(this.PAYPAL_INFORM, data , { headers }).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }
}
