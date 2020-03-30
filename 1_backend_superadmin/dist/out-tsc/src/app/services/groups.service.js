import * as tslib_1 from "tslib";
import { environment as env } from '../../environments/environment';
import { environment as envProd } from '../../environments/environment.prod';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable, isDevMode } from '@angular/core';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';
import { InterceptorSkipHeader } from './http.request.interceptor';
var GroupsService = /** @class */ (function () {
    function GroupsService(httpClient) {
        this.httpClient = httpClient;
        this.GROUPLIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "group";
    }
    GroupsService.prototype.getGroupList = function (data) {
        var headers = new HttpHeaders().set(InterceptorSkipHeader, '');
        return this.httpClient.post(this.GROUPLIST_URL, data, { headers: headers }).pipe(map(function (response) { return response; }), catchError(function (error) { return observableThrowError(error); }));
    };
    GroupsService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], GroupsService);
    return GroupsService;
}());
export { GroupsService };
//# sourceMappingURL=groups.service.js.map