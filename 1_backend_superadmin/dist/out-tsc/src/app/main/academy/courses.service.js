import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { environment as env } from '../../../environments/environment';
import { environment as envProd } from '../../../environments/environment.prod';
import { LocalsessionService } from '../../services/localsession.service';
var AcademyCoursesService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function AcademyCoursesService(_httpClient, _localSession) {
        this._httpClient = _httpClient;
        this._localSession = _localSession;
        this.base_url = "" + (isDevMode() && env.baseUrl || envProd.baseUrl);
        // Set the defaults
        this.onCategoriesChanged = new BehaviorSubject({});
        this.onCoursesChanged = new BehaviorSubject({});
        this.onLevelsChanged = new BehaviorSubject({});
        this.onLessonsChanged = new BehaviorSubject({});
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
    AcademyCoursesService.prototype.resolve = function (route, state) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getCategories(),
                _this.getCourses(),
                _this.getLevels(),
                _this.getLessons(),
            ]).then(function () {
                resolve();
            }, reject);
        });
    };
    /**
     * Get categories
     *
     * @returns {Promise<any>}
     */
    AcademyCoursesService.prototype.getCategories = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['role'] = '0';
        var category_url = this.base_url + 'course/category';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(category_url, data)
                .subscribe(function (response) {
                _this.onCategoriesChanged.next(response);
                resolve(response);
            }, reject);
        });
    };
    /**
     * Get courses
     *
     * @returns {Promise<any>}
     */
    AcademyCoursesService.prototype.getCourses = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['role'] = '0';
        var courses_url = this.base_url + 'course/courses';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, data)
                .subscribe(function (response) {
                _this.onCoursesChanged.next(response);
                resolve(response);
            }, reject);
        });
    };
    /**
     * Update course
     *
     * @param course
     * @returns {Promise<any>}
     */
    AcademyCoursesService.prototype.addCourse = function (course) {
        var _this = this;
        var formData = new FormData();
        formData.append("token", this._localSession.retrieveToken());
        formData.append("user_id", this._localSession.retrieveUserID());
        formData.append("role", '0');
        formData.append("course_name", course.course_name);
        formData.append("course_content", course.course_content);
        formData.append("from_date", course.from_date);
        formData.append("to_date", course.to_date);
        formData.append("status", course.status);
        formData.append("course_file", course.course_file);
        var courses_url = this.base_url + 'course/addcourse';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, formData)
                .subscribe(function (response) {
                _this.getCourses();
                resolve(response);
            });
        });
    };
    /**
     * Update course
     *
     * @param course
     * @returns {Promise<any>}
     */
    AcademyCoursesService.prototype.updateCourse = function (course) {
        var _this = this;
        var formData = new FormData();
        formData.append("token", this._localSession.retrieveToken());
        formData.append("user_id", this._localSession.retrieveUserID());
        formData.append("role", '0');
        formData.append("course_name", course.course_name);
        formData.append("course_content", course.course_content);
        formData.append("from_date", course.from_date);
        formData.append("to_date", course.to_date);
        formData.append("status", course.status);
        formData.append("course_file", course.course_file);
        var courses_url = this.base_url + 'course/updatecourse';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, formData)
                .subscribe(function (response) {
                _this.getCourses();
                resolve(response);
            });
        });
    };
    /**
     * Update course
     *
     * @param course
     * @returns {Promise<any>}
     */
    AcademyCoursesService.prototype.deleteCourse = function (course) {
        var _this = this;
        var formData = new FormData();
        formData.append("token", this._localSession.retrieveToken());
        formData.append("user_id", this._localSession.retrieveUserID());
        formData.append("role", '0');
        formData.append("course_id", course.id);
        formData.append("status", course.status);
        var courses_url = this.base_url + 'course/deletecourse';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, formData)
                .subscribe(function (response) {
                _this.getCourses();
                resolve(response);
            });
        });
    };
    /**
   * Update course status
   *
   * @param course
   * @returns {Promise<any>}
   */
    AcademyCoursesService.prototype.updateCourseStatus = function (course_id, status) {
        var _this = this;
        var formData = new FormData();
        formData.append("token", this._localSession.retrieveToken());
        formData.append("user_id", this._localSession.retrieveUserID());
        formData.append("role", '0');
        formData.append("course_id", course_id);
        formData.append("status", status);
        var courses_url = this.base_url + 'course/updatecoursestatus';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, formData)
                .subscribe(function (response) {
                //this.getCourses();
                resolve(response);
            });
        });
    };
    /**
     * Get courses
     *
     * @returns {Promise<any>}
     */
    AcademyCoursesService.prototype.getLevels = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['role'] = '0';
        var courses_url = this.base_url + 'course/levels';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, data)
                .subscribe(function (response) {
                _this.onLevelsChanged.next(response);
                resolve(response);
            }, reject);
        });
    };
    /**
    * Get courses
    *
    * @returns {Promise<any>}
    */
    AcademyCoursesService.prototype.getLessons = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['role'] = '0';
        var courses_url = this.base_url + 'course/lessons';
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(courses_url, data)
                .subscribe(function (response) {
                _this.onLessonsChanged.next(response);
                resolve(response);
            }, reject);
        });
    };
    AcademyCoursesService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            LocalsessionService])
    ], AcademyCoursesService);
    return AcademyCoursesService;
}());
export { AcademyCoursesService };
//# sourceMappingURL=courses.service.js.map