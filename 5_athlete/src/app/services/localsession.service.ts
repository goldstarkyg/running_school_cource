import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LocalsessionService {
  private logicStage  = 'logic_stage';
  private token       = 'token';
  private user_id     = 'user_id';

  private school_id   = 'school_id';

  private verify_mail = 'verify_mail';
  private verify_pwd  = 'verify_pwd';
  
  private athlete_login  = 'athlete_login';
 
  constructor() { }
  
  public saveLogicStage(stage) {
    localStorage.setItem(this.logicStage, stage);
  }

  public retrieveLogicStage() {
    const storedLogic: string = localStorage.getItem(this.logicStage);
    return storedLogic;
  }

  public saveUserID(token) {
    localStorage.setItem(this.user_id, token);
  }

  public retrieveUserID() {
    const token: string = localStorage.getItem(this.user_id);
    return token;
    // return '1';
  }

  public saveToken(token) {
    localStorage.setItem(this.token, token);
  }

  public retrieveToken() {
    const token: string = localStorage.getItem(this.token);
    return token;
    // return 'MTU2MzEyNzYzMEhnUEFuR1JPejZKcEhjR1B2bVcx';
  }

  public saveSchoolID(id) {
    localStorage.setItem(this.school_id, id);
  }

  public retrieveSchoolID() {
    return localStorage.getItem(this.school_id);
  }

  public saveVerifyEmail(email) {
    localStorage.setItem(this.verify_mail, email);
  }

  public retrieveVerifyEmail() {
    return localStorage.getItem(this.verify_mail);
  }

  public saveVerifyPassword(password) {
    localStorage.setItem(this.verify_pwd, password);
  }

  public retrieveVerifyPassword() {
    return localStorage.getItem(this.verify_pwd);
  }

  public retriveIsAthleteLogin() {
    return localStorage.getItem(this.athlete_login);
  }

  public saveIsAthleteLogin(isLogin) {
    return localStorage.setItem(this.athlete_login, isLogin);
  }

}
