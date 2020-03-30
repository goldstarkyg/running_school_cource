import * as tslib_1 from "tslib";
import { HttpErrorResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { throwError as observableThrowError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';
import { SessionService } from './session.service';
export var InterceptorSkipHeader = 'X-Skip-Interceptor';
var HttpsRequestInterceptor = /** @class */ (function () {
    function HttpsRequestInterceptor(session) {
        this.session = session;
    }
    HttpsRequestInterceptor.prototype.intercept = function (req, next) {
        if (req.headers.has(InterceptorSkipHeader)) {
            var headers = req.headers.delete(InterceptorSkipHeader);
            return next.handle(req.clone({ headers: headers }));
        }
        else {
            if (this.session.retrieveToken() != null) {
                req = req.clone({
                    setHeaders: {
                        authorization: 'Bearer ' + this.session.retrieveToken()
                    }
                });
            }
            return next.handle(req).pipe(map(function (event) {
                return event;
            }), catchError(function (err) {
                if (err instanceof HttpErrorResponse) {
                    if (err.status === 401 || err.status === 403) {
                    }
                    return observableThrowError(err);
                }
            }));
        }
    };
    HttpsRequestInterceptor = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [SessionService])
    ], HttpsRequestInterceptor);
    return HttpsRequestInterceptor;
}());
export { HttpsRequestInterceptor };
//# sourceMappingURL=http.request.interceptor.js.map