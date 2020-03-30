import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
var LocalsessionService = /** @class */ (function () {
    function LocalsessionService() {
        this.logicStage = 'logic_stage';
        this.token = 'token';
        this.user_id = 'user_id';
        this.school_id = 'school_id';
    }
    LocalsessionService.prototype.saveLogicStage = function (stage) {
        localStorage.setItem(this.logicStage, stage);
    };
    LocalsessionService.prototype.retrieveLogicStage = function () {
        var storedLogic = localStorage.getItem(this.logicStage);
        return storedLogic;
    };
    LocalsessionService.prototype.saveUserID = function (token) {
        localStorage.setItem(this.user_id, token);
    };
    LocalsessionService.prototype.retrieveUserID = function () {
        var _id = localStorage.getItem(this.user_id);
        return _id;
        // return '1';
    };
    LocalsessionService.prototype.saveToken = function (token) {
        localStorage.setItem(this.token, token);
    };
    LocalsessionService.prototype.retrieveToken = function () {
        var token = localStorage.getItem(this.token);
        return token;
        // return 'MTU2MTgwMjUyM0ZsejhxMEdJc3JwSXlwVENiS21X';
    };
    LocalsessionService.prototype.saveSchoolID = function (id) {
        localStorage.setItem(this.school_id, id);
    };
    LocalsessionService.prototype.retrieveSchoolID = function () {
        return localStorage.getItem(this.school_id);
    };
    LocalsessionService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], LocalsessionService);
    return LocalsessionService;
}());
export { LocalsessionService };
//# sourceMappingURL=localsession.service.js.map