import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable, Subject } from 'rxjs';

import { environment as env } from '../../../../../environments/environment';
import { environment as envProd } from '../../../../../environments/environment.prod';

import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';
import { InterceptorSkipHeader } from 'app/services/http.request.interceptor';
import { HttpHeaders, HttpParams } from '@angular/common/http';

@Injectable()
export class ReservationService
{
    public RESERVE_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}athlete/school/course/reservation`;
    constructor( private _httpClient: HttpClient ) {}
    public sendReservation(data) {
        var formData = new FormData();
    
        formData.append("user_id", data.user_id);
        formData.append("token", data.token);
        formData.append("school_course_id", data.school_course_id);
        formData.append("bio", data.bio);
        formData.append("description", data.bio);
        formData.append("request_file", data.request_file);
        formData.append("role", '5');
   
        return this._httpClient.post<any>(this.RESERVE_URL, formData).pipe(
          map(response => response),
          catchError((error: Response) => observableThrowError(error)));
      }
}
