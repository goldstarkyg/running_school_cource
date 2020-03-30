import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { GlobalService } from '../../../services/global.service';
import { LocalsessionService } from '../../../services/localsession.service';
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
var PendingTrainerListService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function PendingTrainerListService(_httpClient, globalVars, _localSession) {
        this._httpClient = _httpClient;
        this.globalVars = globalVars;
        this._localSession = _localSession;
        this.PENDING_TRAINER_LIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/personal";
        // Set the defaults
        this.onTrainersChanged = new BehaviorSubject({});
    }
    /**
     * Resolver
     *
     * @param {ActivatedRouteSnapshot} route
     * @param {RouterStateSnapshot} state
     * @returns {Observable<any> | Promise<any> | any}
     */
    PendingTrainerListService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
        this.globalVars.g_nDisplySchoolMode = this.routeParams.mode;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getPendingTrainers()
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
    PendingTrainerListService.prototype.getPendingTrainers = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = '0';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(_this.PENDING_TRAINER_LIST_URL, data)
                .subscribe(function (response) {
                _this.pendingTrainers = response;
                resolve(response);
            }, reject);
        });
    };
    PendingTrainerListService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            GlobalService,
            LocalsessionService])
    ], PendingTrainerListService);
    return PendingTrainerListService;
}());
export { PendingTrainerListService };
//# sourceMappingURL=pending-list.service.js.map