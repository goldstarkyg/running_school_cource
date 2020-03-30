import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { GlobalService } from '../../../services/global.service';
import { LocalsessionService } from '../../../services/localsession.service';
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';
var SchoolService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function SchoolService(_httpClient, globalVars, _localSession) {
        this._httpClient = _httpClient;
        this.globalVars = globalVars;
        this._localSession = _localSession;
        this.SCHOOL_PER_ID_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/show/";
        this.UPDATE_SCHOOL_BY_ID_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/update/";
        this.UPDATE_TECHNICAL_BY_ID_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "technical/update/";
        // Set the defaults
        this.onSchoolChanged = new BehaviorSubject({});
    }
    /**
     * Resolver
     *
     * @param {ActivatedRouteSnapshot} route
     * @param {RouterStateSnapshot} state
     * @returns {Observable<any> | Promise<any> | any}
     */
    SchoolService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
        this.globalVars.g_nSchoolID = this.routeParams.id;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getSchool()
            ]).then(function () {
                resolve();
            }, reject);
        });
    };
    /**
     * Get school
     *
     * @returns {Promise<any>}
     */
    SchoolService.prototype.getSchool = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(_this.SCHOOL_PER_ID_URL + _this.routeParams.id, data)
                .subscribe(function (response) {
                _this.retData = response;
                _this.onSchoolChanged.next(_this.retData);
                resolve(response);
            }, reject);
        });
    };
    /**
     * Update school
     *
     */
    SchoolService.prototype.updateSchool = function (status) {
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = status;
        return this._httpClient.post(this.UPDATE_SCHOOL_BY_ID_URL + this.routeParams.id, data).pipe(map(function (response) { return response; }), catchError(function (error) { return observableThrowError(error); }));
    };
    /**
     * Update school
     *
     */
    SchoolService.prototype.updateTechnicalManager = function (user_id, status) {
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = status;
        return this._httpClient.post(this.UPDATE_TECHNICAL_BY_ID_URL + user_id, data).pipe(map(function (response) { return response; }), catchError(function (error) { return observableThrowError(error); }));
    };
    SchoolService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            GlobalService,
            LocalsessionService])
    ], SchoolService);
    return SchoolService;
}());
export { SchoolService };
//# sourceMappingURL=school.service.js.map