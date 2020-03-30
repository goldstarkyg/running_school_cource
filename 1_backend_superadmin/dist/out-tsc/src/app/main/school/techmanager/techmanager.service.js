import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
var TechnManagerService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function TechnManagerService(_httpClient) {
        this._httpClient = _httpClient;
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
    TechnManagerService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
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
    TechnManagerService.prototype.getSchool = function () {
        var _this = this;
        return new Promise(function (resolve, reject) {
            if (_this.routeParams.id === 'new') {
                _this.onSchoolChanged.next(false);
                resolve(false);
            }
            else {
                _this._httpClient.get('api/school-techmanager/' + _this.routeParams.id)
                    .subscribe(function (response) {
                    _this.technicalmanager = response;
                    _this.onSchoolChanged.next(_this.technicalmanager);
                    resolve(response);
                }, reject);
            }
        });
    };
    /**
     * Save school
     *
     * @param school
     * @returns {Promise<any>}
     */
    TechnManagerService.prototype.saveProduct = function (technicalmanager) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post('api/school-techmanager/' + technicalmanager.id, technicalmanager)
                .subscribe(function (response) {
                resolve(response);
            }, reject);
        });
    };
    /**
     * Add school
     *
     * @param school
     * @returns {Promise<any>}
     */
    TechnManagerService.prototype.addProduct = function (technicalmanager) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post('api/school-techmanager/', technicalmanager)
                .subscribe(function (response) {
                resolve(response);
            }, reject);
        });
    };
    TechnManagerService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], TechnManagerService);
    return TechnManagerService;
}());
export { TechnManagerService };
//# sourceMappingURL=techmanager.service.js.map