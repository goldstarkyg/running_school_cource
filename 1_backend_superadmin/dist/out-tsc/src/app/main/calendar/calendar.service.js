import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Subject } from 'rxjs';
var CalendarService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function CalendarService(_httpClient) {
        this._httpClient = _httpClient;
        // Set the defaults
        this.onEventsUpdated = new Subject();
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
    CalendarService.prototype.resolve = function (route, state) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getEvents()
            ]).then(function (_a) {
                var events = _a[0];
                resolve();
            }, reject);
        });
    };
    /**
     * Get events
     *
     * @returns {Promise<any>}
     */
    CalendarService.prototype.getEvents = function () {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/calendar/events')
                .subscribe(function (response) {
                _this.events = response.data;
                _this.onEventsUpdated.next(_this.events);
                resolve(_this.events);
            }, reject);
        });
    };
    /**
     * Update events
     *
     * @param events
     * @returns {Promise<any>}
     */
    CalendarService.prototype.updateEvents = function (events) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post('api/calendar/events', {
                id: 'events',
                data: events.slice()
            })
                .subscribe(function (response) {
                _this.getEvents();
            }, reject);
        });
    };
    CalendarService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], CalendarService);
    return CalendarService;
}());
export { CalendarService };
//# sourceMappingURL=calendar.service.js.map