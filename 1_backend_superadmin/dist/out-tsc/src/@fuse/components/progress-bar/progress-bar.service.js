import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { NavigationCancel, NavigationEnd, NavigationError, NavigationStart, Router } from '@angular/router';
import { BehaviorSubject } from 'rxjs';
import { filter } from 'rxjs/operators';
var FuseProgressBarService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {Router} _router
     */
    function FuseProgressBarService(_router) {
        this._router = _router;
        // Initialize the service
        this._init();
    }
    Object.defineProperty(FuseProgressBarService.prototype, "bufferValue", {
        // -----------------------------------------------------------------------------------------------------
        // @ Accessors
        // -----------------------------------------------------------------------------------------------------
        /**
         * Buffer value
         */
        get: function () {
            return this._bufferValue.asObservable();
        },
        enumerable: true,
        configurable: true
    });
    FuseProgressBarService.prototype.setBufferValue = function (value) {
        this._bufferValue.next(value);
    };
    Object.defineProperty(FuseProgressBarService.prototype, "mode", {
        /**
         * Mode
         */
        get: function () {
            return this._mode.asObservable();
        },
        enumerable: true,
        configurable: true
    });
    FuseProgressBarService.prototype.setMode = function (value) {
        this._mode.next(value);
    };
    Object.defineProperty(FuseProgressBarService.prototype, "value", {
        /**
         * Value
         */
        get: function () {
            return this._value.asObservable();
        },
        enumerable: true,
        configurable: true
    });
    FuseProgressBarService.prototype.setValue = function (value) {
        this._value.next(value);
    };
    Object.defineProperty(FuseProgressBarService.prototype, "visible", {
        /**
         * Visible
         */
        get: function () {
            return this._visible.asObservable();
        },
        enumerable: true,
        configurable: true
    });
    // -----------------------------------------------------------------------------------------------------
    // @ Private methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Initialize
     *
     * @private
     */
    FuseProgressBarService.prototype._init = function () {
        var _this = this;
        // Initialize the behavior subjects
        this._bufferValue = new BehaviorSubject(0);
        this._mode = new BehaviorSubject('indeterminate');
        this._value = new BehaviorSubject(0);
        this._visible = new BehaviorSubject(false);
        // Subscribe to the router events to show/hide the loading bar
        this._router.events
            .pipe(filter(function (event) { return event instanceof NavigationStart; }))
            .subscribe(function () {
            _this.show();
        });
        this._router.events
            .pipe(filter(function (event) { return event instanceof NavigationEnd || event instanceof NavigationError || event instanceof NavigationCancel; }))
            .subscribe(function () {
            _this.hide();
        });
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Show the progress bar
     */
    FuseProgressBarService.prototype.show = function () {
        this._visible.next(true);
    };
    /**
     * Hide the progress bar
     */
    FuseProgressBarService.prototype.hide = function () {
        this._visible.next(false);
    };
    FuseProgressBarService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [Router])
    ], FuseProgressBarService);
    return FuseProgressBarService;
}());
export { FuseProgressBarService };
//# sourceMappingURL=progress-bar.service.js.map