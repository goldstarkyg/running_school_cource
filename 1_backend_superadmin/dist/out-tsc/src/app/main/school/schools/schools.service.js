import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { GlobalService } from '../../../services/global.service';
import { LocalsessionService } from '../../../services/localsession.service';
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { catchError, map } from 'rxjs/operators';
import { throwError as observableThrowError } from 'rxjs';
var SchoolListService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function SchoolListService(_httpClient, globalVars, _localSession) {
        this._httpClient = _httpClient;
        this.globalVars = globalVars;
        this._localSession = _localSession;
        this.SCHOOLS_LIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school";
        this.SCHOOLNAME_LIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/getname";
        // Set the defaults
        this.onSchoolsChanged = new BehaviorSubject({});
    }
    /**
     * Resolver
     *
     * @param {ActivatedRouteSnapshot} route
     * @param {RouterStateSnapshot} state
     * @returns {Observable<any> | Promise<any> | any}
     */
    SchoolListService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
        this.globalVars.g_nDisplySchoolMode = this.routeParams.mode;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getSchools()
            ]).then(function () {
                resolve();
            }, reject);
        });
    };
    /**
     * Get schools
     *
     * @returns {Promise<any>}
     */
    SchoolListService.prototype.getSchools = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = '' + this.globalVars.g_nDisplySchoolMode;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(_this.SCHOOLS_LIST_URL, data)
                .subscribe(function (response) {
                _this.schools = response;
                _this.onSchoolsChanged.next(_this.schools);
                resolve(response);
            }, reject);
        });
    };
    SchoolListService.prototype.reloadSchools = function (status) {
        var _this = this;
        this.globalVars.g_nDisplySchoolMode = status;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = '' + this.globalVars.g_nDisplySchoolMode;
        this._httpClient.post(this.SCHOOLS_LIST_URL, data)
            .subscribe(function (response) {
            _this.schools = response;
            _this.onSchoolsChanged.next(_this.schools);
        });
    };
    SchoolListService.prototype.getSchoolNames = function () {
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        return this._httpClient.post(this.SCHOOLNAME_LIST_URL, data).pipe(map(function (response) { return response; }), catchError(function (error) { return observableThrowError(error); }));
    };
    SchoolListService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            GlobalService,
            LocalsessionService])
    ], SchoolListService);
    return SchoolListService;
}());
export { SchoolListService };
//# sourceMappingURL=schools.service.js.map