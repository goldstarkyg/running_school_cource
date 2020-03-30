import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
var SessionService = /** @class */ (function () {
    function SessionService() {
        this.tokenKey = 'app_token';
        this.userId = 'user_id';
        this.userName = 'user_name';
        this.userData = 'user_data';
    }
    SessionService.prototype.saveToken = function (token) {
        sessionStorage.setItem(this.tokenKey, token);
    };
    SessionService.prototype.retrieveToken = function () {
        var storedToken = sessionStorage.getItem(this.tokenKey);
        return storedToken;
    };
    SessionService.prototype.saveUserId = function (token) {
        sessionStorage.setItem(this.userId, token);
    };
    SessionService.prototype.retrieveUserId = function () {
        var storedUserId = sessionStorage.getItem(this.userId);
        return storedUserId;
    };
    SessionService.prototype.saveUserData = function (userData) {
        sessionStorage.setItem(this.userData, userData);
    };
    SessionService.prototype.retrieveUserData = function () {
        return sessionStorage.getItem(this.userData);
    };
    SessionService.prototype.retrieveUserCategory = function () {
        if (this.retrieveUserData()) {
            return JSON.parse(this.retrieveUserData()).category;
        }
        return 'Customer';
    };
    SessionService.prototype.destroy = function () {
        sessionStorage.clear();
    };
    /** alidavid0418 */
    SessionService.prototype.isLoggedIn = function () {
        return this.retrieveToken() && this.retrieveUserId();
    };
    SessionService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [])
    ], SessionService);
    return SessionService;
}());
export { SessionService };
//# sourceMappingURL=session.service.js.map