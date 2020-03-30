import { environment as env } from '../../environments/environment';
import { environment as envProd } from '../../environments/environment.prod';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable, isDevMode } from '@angular/core';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

import { InterceptorSkipHeader } from './http.request.interceptor';
// import { LocalsessionService } from '../services/localsession.service';

@Injectable({
  providedIn: 'root'
})

export class GlobalService {
  public _gShowStage = 0;
  public _userid : String;
  public _token : String;

  public _gRegisterMode : number;

  public _gMailAddress : string;
  public _gPassword : string;
  public _gVerifiedMode : boolean;
  
  public PAYPAL_INFORM = `${isDevMode() && env.baseUrl || envProd.baseUrl}pay/inform`;
  public PAY_STATUS_CHANGE = `${isDevMode() && env.baseUrl || envProd.baseUrl}athlete/school/course/pay`;
  public PAY_HISTORY = `${isDevMode() && env.baseUrl || envProd.baseUrl}athlete/school/course/pay_history`;


  constructor(private httpClient: HttpClient) { }

  getPayInform(data) {
    const headers = new HttpHeaders().set(InterceptorSkipHeader, '');
    return this.httpClient.post(this.PAYPAL_INFORM, data , { headers }).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }

  changePayStatus(data) {
    const headers = new HttpHeaders().set(InterceptorSkipHeader, '');
    return this.httpClient.post(this.PAY_STATUS_CHANGE, data, { headers }).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }
  
  savePayHistory(data) {
    const headers = new HttpHeaders().set(InterceptorSkipHeader, '');
    return this.httpClient.post(this.PAY_HISTORY, data, { headers }).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }
}
