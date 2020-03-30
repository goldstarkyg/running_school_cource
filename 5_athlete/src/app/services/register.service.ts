import { environment as env } from '../../environments/environment';
import { environment as envProd } from '../../environments/environment.prod';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable, isDevMode } from '@angular/core';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

// import { InterceptorSkipHeader } from './http.request.interceptor';

@Injectable({
  providedIn: 'root'
})

export class RegisterService {
  public REG_SCHOOL_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/create`;
  public REG_TECHNICAL_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/technical/create`;
  public REG_PERSONAL_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/personal/create`;
  public REG_ATHLETE_URL = `${isDevMode() && env.baseUrl || envProd.baseUrl}school/athlete/create`;

  constructor(private httpClient: HttpClient) { }
  
  getDateFormatString( date : string)
  {
    let dt : Date;
    dt = new Date( date );
    let birth_date = dt.getFullYear() + "-" ;
    if( dt.getMonth() < 10 )
      birth_date += ('0' + dt.getMonth());
    else
      birth_date += dt.getMonth();

    if( dt.getDate() < 10 )
      birth_date += ('0' + dt.getDate());
    else
      birth_date += dt.getDate();
      
    return birth_date;
  }

  public register_school(data) {

    var formData = new FormData();
    let birth_date = this.getDateFormatString(data.dob);

    formData.append("school_name", data.school_name);
    formData.append("reference_asd", data.reference_asd);
    formData.append("company_code", data.company_code);
    formData.append("school_state", data.school_state);
    formData.append("school_region", data.school_region);
    formData.append("school_province", data.school_province);
    formData.append("school_city", data.school_city);
    formData.append("school_address", data.school_address);
    formData.append("school_membership_type", data.school_membership_type);
    formData.append("postal_code", data.postal_code);
    formData.append("first_name", data.first_name);
    formData.append("last_name", data.last_name);
    formData.append("email", data.email);
    formData.append("dob", birth_date);
    formData.append("mobile_phone", data.mobile_phone);
    formData.append("gender", data.gender);
    formData.append("state", data.state);
    formData.append("region", data.region);
    formData.append("province", data.province);
    formData.append("city", data.city);
    formData.append("address", data.address);
    formData.append("postal", data.postal);
    formData.append("group", data.group);
    formData.append("vat_number", data.vat_number);
    formData.append("fiscal_code", data.fiscal_code);
    formData.append("membership_type", data.membership_type);
    formData.append("bio", data.bio);
    formData.append("activate", "1");
    formData.append("lati", data.lati);
    formData.append("longi", data.longi);

    (data.banner_file) && formData.append("banner_file", data.banner_file);
    (data.logo_file) && formData.append("logo_file", data.logo_file);
    (data.pic_file) && formData.append("pic_file", data.pic_file);

    if (data.upload_length) {

      for (let i = 0; i < data.upload_length; i++) {
        formData.append('school_upload[' + i + ']', data['school_upload[' + i + ']']);
      }
    }

    return this.httpClient.post<any>(this.REG_SCHOOL_URL, formData).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }

  public register_technical(data) {

    var formData = new FormData();
    let birth_date = this.getDateFormatString(data.dob);

    formData.append("school_id", data.school_id);
    (data.pic_file) && formData.append("pic_file", data.pic_file);
    formData.append("first_name", data.first_name);
    formData.append("last_name", data.last_name);
    formData.append("email", data.email);
    formData.append("dob", birth_date);
    formData.append("birth_place", data.birth_place);
    formData.append("nationality", data.nationality);
    formData.append("mobile_phone", data.mobile_phone);
    formData.append("gender", data.gender);
    formData.append("state", data.state);
    formData.append("region", data.region);
    formData.append("province", data.province);
    formData.append("city", data.city);
    formData.append("address", data.address);
    formData.append("certified_type", data.certified_type);
    formData.append("postal", data.postal);
    formData.append("group", data.group);
    formData.append("vat_number", data.vat_number);
    formData.append("fiscal_code", data.fiscal_code);
    formData.append("card_number", data.card_number);
    formData.append("membership_type", data.membership_type);
    formData.append("bio", data.bio);
    formData.append("activate", "1");
    formData.append("lati", data.lati);
    formData.append("longi", data.longi);

    if (data.upload_length) {

      for (let i = 0; i < data.upload_length; i++) {
        formData.append('user_upload[' + i + ']', data['school_upload[' + i + ']']);
      }
    }

    return this.httpClient.post<any>(this.REG_TECHNICAL_URL, formData).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }

  public register_personal(data) {

    var formData = new FormData();
    let birth_date = this.getDateFormatString(data.dob);    
    
    (data.pic_file) && formData.append("pic_file", data.pic_file);
    formData.append("first_name", data.first_name);
    formData.append("last_name", data.last_name);
    formData.append("email", data.email);
    formData.append("dob", birth_date);
    formData.append("birth_place", data.birth_place);
    formData.append("nationality", data.nationality);
    formData.append("mobile_phone", data.mobile_phone);
    formData.append("gender", data.gender);
    formData.append("state", data.state);
    formData.append("region", data.region);
    formData.append("province", data.province);
    formData.append("city", data.city);
    formData.append("address", data.address);
    formData.append("certified_type", data.certified_type);
    formData.append("postal", data.postal);
    formData.append("group", data.group);
    formData.append("vat_number", data.vat_number);
    formData.append("fiscal_code", data.fiscal_code);
    formData.append("card_number", data.card_number);
    formData.append("membership_type", data.membership_type);
    formData.append("bio", data.bio);
    formData.append("activate", "1");
    formData.append("lati", data.lati);
    formData.append("longi", data.longi);

    if (data.upload_length) {

      for (let i = 0; i < data.upload_length; i++) {
        formData.append('user_upload[' + i + ']', data['school_upload[' + i + ']']);
      }
    }

    return this.httpClient.post<any>(this.REG_PERSONAL_URL, formData).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }

  public register_athlete(data) {

    var formData = new FormData();
    let birth_date = this.getDateFormatString(data.dob);
    
    (data.pic_file) && formData.append("pic_file", data.pic_file);
    formData.append("first_name", data.first_name);
    formData.append("last_name", data.last_name);
    formData.append("email", data.email);
    formData.append("password", data.password);
    formData.append("dob", birth_date);
    formData.append("birth_place", data.birth_place);
    formData.append("nationality", data.nationality);
    formData.append("mobile_phone", data.mobile_phone);
    formData.append("gender", data.gender);
    formData.append("state", data.state);
    formData.append("region", data.region);
    formData.append("province", data.province);
    formData.append("city", data.city);
    formData.append("address", data.address);
    formData.append("certified_type", data.certified_type);
    formData.append("postal", data.postal);
    formData.append("group", data.group);
    formData.append("vat_number", data.vat_number);
    formData.append("fiscal_code", data.fiscal_code);
    formData.append("card_number", data.card_number);
    formData.append("membership_type", data.membership_type);
    formData.append("bio", data.bio);
    formData.append("activate", "1");
    formData.append("lati", data.lati);
    formData.append("longi", data.longi);

    if (data.upload_length) {

      for (let i = 0; i < data.upload_length; i++) {
        formData.append('user_upload[' + i + ']', data['school_upload[' + i + ']']);
      }
    }

    return this.httpClient.post<any>(this.REG_ATHLETE_URL, formData).pipe(
      map(response => response),
      catchError((error: Response) => observableThrowError(error)));
  }
}
