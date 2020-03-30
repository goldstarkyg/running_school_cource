import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { environment as env } from '../../../environments/environment';
import { environment as envProd } from '../../../environments/environment.prod';
import { LocalsessionService } from '../../services/localsession.service';
var AcademyCourseService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function AcademyCourseService(_httpClient, _localSession) {
        this._httpClient = _httpClient;
        this._localSession = _localSession;
        this.base_url = "" + (isDevMode() && env.baseUrl || envProd.baseUrl);
        // Set the defaults
        this.onCourseChanged = new BehaviorSubject({});
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Resolver
     *
     * @param {ActivatedRouteSnapshot} route
     * @param {RouterStateSnapshot} state
     * @returns {Observable<any> | Promise<any> | any}
     */
    AcademyCourseService.prototype.resolve = function (route, state) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getCourse(route.params.courseId, route.params.courseSlug)
            ]).then(function () {
                resolve();
            }, reject);
        });
    };
    /**
     * Get course
     *
     * @param courseId
     * @param courseSlug
     * @returns {Promise<any>}
     */
    AcademyCourseService.prototype.getCourse = function (courseId, courseSlug) {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['role'] = '0';
        //let course_url= this.base_url + 'course/course/' + courseId + '/' + courseSlug; 
        var course_url = this.base_url + 'course/course';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(course_url, data)
                .subscribe(function (response) {
                _this.onCourseChanged.next(response);
                resolve(response);
            }, reject);
        });
    };
    AcademyCourseService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            LocalsessionService])
    ], AcademyCourseService);
    return AcademyCourseService;
}());
export { AcademyCourseService };
//# sourceMappingURL=course.service.js.map