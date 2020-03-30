import * as tslib_1 from "tslib";
import { Injectable, isDevMode } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Subject } from 'rxjs';
import { FuseUtils } from '@fuse/utils';
import { Trainer } from 'app/main/trainers/trainer.model';
import { GlobalService } from '../../services/global.service';
import { LocalsessionService } from '../../services/localsession.service';
import { environment as env } from '../../../environments/environment';
import { environment as envProd } from '../../../environments/environment.prod';
var TrainersService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function TrainersService(_httpClient, _localSession, globalVars) {
        this._httpClient = _httpClient;
        this._localSession = _localSession;
        this.globalVars = globalVars;
        this.schools = [];
        this.TRAINERS_LIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/personal";
        this.SCHOOLS_LIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school";
        this.SCHOOLNAME_LIST_URL = (isDevMode() && env.baseUrl || envProd.baseUrl) + "school/getname";
        this.selectedContacts = [];
        this.filterBy = 'all';
        // Set the defaults
        this.onTrainersChanged = new BehaviorSubject([]);
        this.onSchoolNamesChanged = new BehaviorSubject([]);
        this.onSelectedTrainersChanged = new BehaviorSubject([]);
        this.onUserDataChanged = new BehaviorSubject([]);
        this.onSearchTextChanged = new Subject();
        this.onFilterChanged = new Subject();
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
    TrainersService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
        this.globalVars.g_nDisplyTrainerMode = this.routeParams.id;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getSchoolNames(),
                // this.getUserData(),
                _this.getTrainers()
            ]).then(function (_a) {
                var files = _a[0];
                _this.onSearchTextChanged.subscribe(function (searchText) {
                    _this.searchText = searchText;
                    _this.getTrainers();
                });
                _this.onFilterChanged.subscribe(function (filter) {
                    _this.filterBy = filter;
                    _this.getTrainers();
                });
                resolve();
            }, reject);
        });
    };
    /**
     * Get contacts
     *
     * @returns {Promise<any>}
     */
    // getSchoolNames() {
    //     let data: any = {};
    //     data['token'] = this._localSession.retrieveToken();
    //     data['user_id'] = this._localSession.retrieveUserID();
    //     return this._httpClient.post(this.SCHOOLNAME_LIST_URL, data).pipe(
    //         map(response => response),
    //         catchError((error: Response) => observableThrowError(error)));
    // }
    TrainersService.prototype.getSchoolNames = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(_this.SCHOOLNAME_LIST_URL, data)
                .subscribe(function (response) {
                _this.schools = response;
                _this.schoolnames = [];
                for (var i = 0; i < _this.schools.length; i++) {
                    _this.schoolnames.push(_this.schools[i].school_name);
                }
                _this.schoolnames = _this.schoolnames.filter(function (el, i, a) { return i === a.indexOf(el); });
                _this.onSchoolNamesChanged.next(_this.schools);
                resolve(response);
            }, reject);
        });
    };
    /**
     * Get contacts
     *
     * @returns {Promise<any>}
     */
    TrainersService.prototype.getTrainers = function () {
        var _this = this;
        var data = {};
        data['token'] = this._localSession.retrieveToken();
        data['user_id'] = this._localSession.retrieveUserID();
        data['status'] = '' + this.globalVars.g_nDisplyTrainerMode;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post(_this.TRAINERS_LIST_URL, data)
                .subscribe(function (response) {
                _this.trainers = response;
                if (_this.filterBy !== 'all') {
                    _this.trainers = _this.trainers.filter(function (_trainer) {
                        return _this.filterBy == _trainer.school_name;
                    });
                }
                if (_this.searchText && _this.searchText !== '') {
                    _this.trainers = FuseUtils.filterArrayByString(_this.trainers, _this.searchText);
                }
                _this.trainers = _this.trainers.map(function (contact) {
                    return new Trainer(contact);
                });
                _this.onTrainersChanged.next(_this.trainers);
                resolve(_this.trainers);
            }, reject);
        });
    };
    /**
     * Get user data
     *
     * @returns {Promise<any>}
     */
    TrainersService.prototype.getUserData = function () {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/contacts-user/5725a6802d10e277a0f35724')
                .subscribe(function (response) {
                _this.user = response;
                _this.onUserDataChanged.next(_this.user);
                resolve(_this.user);
            }, reject);
        });
    };
    /**
     * Toggle selected contact by id
     *
     * @param id
     */
    TrainersService.prototype.toggleSelectedContact = function (id) {
        // First, check if we already have that contact as selected...
        if (this.selectedContacts.length > 0) {
            var index = this.selectedContacts.indexOf(id);
            if (index !== -1) {
                this.selectedContacts.splice(index, 1);
                // Trigger the next event
                this.onSelectedTrainersChanged.next(this.selectedContacts);
                // Return
                return;
            }
        }
        // If we don't have it, push as selected
        this.selectedContacts.push(id);
        // Trigger the next event
        this.onSelectedTrainersChanged.next(this.selectedContacts);
    };
    /**
     * Toggle select all
     */
    TrainersService.prototype.toggleSelectAll = function () {
        if (this.selectedContacts.length > 0) {
            this.deselectContacts();
        }
        else {
            this.selectContacts();
        }
    };
    /**
     * Select contacts
     *
     * @param filterParameter
     * @param filterValue
     */
    TrainersService.prototype.selectContacts = function (filterParameter, filterValue) {
        var _this = this;
        this.selectedContacts = [];
        // If there is no filter, select all contacts
        if (filterParameter === undefined || filterValue === undefined) {
            this.selectedContacts = [];
            this.trainers.map(function (contact) {
                _this.selectedContacts.push(contact.id);
            });
        }
        // Trigger the next event
        this.onSelectedTrainersChanged.next(this.selectedContacts);
    };
    /**
     * Update contact
     *
     * @param contact
     * @returns {Promise<any>}
     */
    TrainersService.prototype.updateContact = function (contact) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post('api/contacts-contacts/' + contact.id, tslib_1.__assign({}, contact))
                .subscribe(function (response) {
                _this.getTrainers();
                resolve(response);
            });
        });
    };
    /**
     * Update user data
     *
     * @param userData
     * @returns {Promise<any>}
     */
    TrainersService.prototype.updateUserData = function (userData) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post('api/contacts-user/' + _this.user.id, tslib_1.__assign({}, userData))
                .subscribe(function (response) {
                // this.getUserData();
                _this.getTrainers();
                resolve(response);
            });
        });
    };
    /**
     * Deselect contacts
     */
    TrainersService.prototype.deselectContacts = function () {
        this.selectedContacts = [];
        // Trigger the next event
        this.onSelectedTrainersChanged.next(this.selectedContacts);
    };
    /**
     * Delete contact
     *
     * @param contact
     */
    TrainersService.prototype.deleteContact = function (contact) {
        var contactIndex = this.trainers.indexOf(contact);
        this.trainers.splice(contactIndex, 1);
        this.onTrainersChanged.next(this.trainers);
    };
    /**
     * Delete selected contacts
     */
    TrainersService.prototype.deleteSelectedContacts = function () {
        var _loop_1 = function (contactId) {
            var contact = this_1.trainers.find(function (_contact) {
                return _contact.id === contactId;
            });
            var contactIndex = this_1.trainers.indexOf(contact);
            this_1.trainers.splice(contactIndex, 1);
        };
        var this_1 = this;
        for (var _i = 0, _a = this.selectedContacts; _i < _a.length; _i++) {
            var contactId = _a[_i];
            _loop_1(contactId);
        }
        this.onTrainersChanged.next(this.trainers);
        this.deselectContacts();
    };
    TrainersService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient,
            LocalsessionService,
            GlobalService])
    ], TrainersService);
    return TrainersService;
}());
export { TrainersService };
//# sourceMappingURL=trainers.service.js.map