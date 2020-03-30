import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { LocalsessionService } from '../../../services/localsession.service';
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { GlobalService } from '../../../services/global.service';
import { BehaviorSubject } from 'rxjs';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';
var PersonalTrainerService = /** @class */ (function () {
    // localhost/api/school/personal/show/68?token=MTU2MTAzODk4OTZyTUxhbURtSURVNWYxQ3RwdjJ4&user_id=1
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function PersonalTrainerService(_httpClient, globalVars, _localSession) {
        this._httpClient = _httpClient;
        this.globalVars = globalVars;
        this._localSession = _localSession;
        this.TRAINER_URL_BYID = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/personal/show/";
        this.TRAINER_UPDATE_BYID = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/personal/update/";
        // Set the defaults
        this.onTrainerChanged = new BehaviorSubject({});
    }
    /**
     * Resolver
     *
     * @param {ActivatedRouteSnapshot} route
     * @param {RouterStateSnapshot} state
     * @returns {Observable<any> | Promise<any> | any}
     */
    PersonalTrainerService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
        this.globalVars.g_nTrainerID = this.routeParams;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getTrainer()
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
    // localhost/api/school/personal/show/68?token=MTU2MTAzODk4OTZyTUxhbURtSURVNWYxQ3RwdjJ4&user_id=1
    PersonalTrainerService.prototype.getTrainer = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        // data['status'] = '' + this.globalVars.g_nTrainerID;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(_this.TRAINER_URL_BYID + _this.routeParams.id, data)
                .subscribe(function (response) {
                _this.personaltrainer = response;
                _this.onTrainerChanged.next(_this.personaltrainer);
                resolve(response);
            }, reject);
        });
    };
    PersonalTrainerService.prototype.approvePersonal = function (trainer_id, school_id) {
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['school_id'] = school_id;
        data['status'] = '1';
        return this.updatePersonal(data, trainer_id);
    };
    PersonalTrainerService.prototype.rejectPersonal = function (trainer_id) {
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = '2';
        return this.updatePersonal(data, trainer_id);
    };
    PersonalTrainerService.prototype.updatePersonal = function (data, trainer_id) {
        return this._httpClient.post(this.TRAINER_UPDATE_BYID + trainer_id, data).pipe(map(function (response) { return response; }), catchError(function (error) { return observableThrowError(error); }));
    };
    PersonalTrainerService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            GlobalService,
            LocalsessionService])
    ], PersonalTrainerService);
    return PersonalTrainerService;
}());
export { PersonalTrainerService };
//# sourceMappingURL=personaltrainer.service.js.map