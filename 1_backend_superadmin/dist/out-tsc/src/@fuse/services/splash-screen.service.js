import * as tslib_1 from "tslib";
import { Inject, Injectable } from '@angular/core';
import { DOCUMENT } from '@angular/common';
import { animate, AnimationBuilder, style } from '@angular/animations';
import { NavigationEnd, Router } from '@angular/router';
import { filter, take } from 'rxjs/operators';
var FuseSplashScreenService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {AnimationBuilder} _animationBuilder
     * @param _document
     * @param {Router} _router
     */
    function FuseSplashScreenService(_animationBuilder, _document, _router) {
        this._animationBuilder = _animationBuilder;
        this._document = _document;
        this._router = _router;
        // Initialize
        this._init();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Private methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Initialize
     *
     * @private
     */
    FuseSplashScreenService.prototype._init = function () {
        var _this = this;
        // Get the splash screen element
        this.splashScreenEl = this._document.body.querySelector('#fuse-splash-screen');
        // If the splash screen element exists...
        if (this.splashScreenEl) {
            // Hide it on the first NavigationEnd event
            this._router.events
                .pipe(filter((function (event) { return event instanceof NavigationEnd; })), take(1))
                .subscribe(function () {
                setTimeout(function () {
                    _this.hide();
                });
            });
        }
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Show the splash screen
     */
    FuseSplashScreenService.prototype.show = function () {
        var _this = this;
        this.player =
            this._animationBuilder
                .build([
                style({
                    opacity: '0',
                    zIndex: '99999'
                }),
                animate('400ms ease', style({ opacity: '1' }))
            ]).create(this.splashScreenEl);
        setTimeout(function () {
            _this.player.play();
        }, 0);
    };
    /**
     * Hide the splash screen
     */
    FuseSplashScreenService.prototype.hide = function () {
        var _this = this;
        this.player =
            this._animationBuilder
                .build([
                style({ opacity: '1' }),
                animate('400ms ease', style({
                    opacity: '0',
                    zIndex: '-10'
                }))
            ]).create(this.splashScreenEl);
        setTimeout(function () {
            _this.player.play();
        }, 0);
    };
    FuseSplashScreenService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__param(1, Inject(DOCUMENT)),
        tslib_1.__metadata("design:paramtypes", [AnimationBuilder, Object, Router])
    ], FuseSplashScreenService);
    return FuseSplashScreenService;
}());
export { FuseSplashScreenService };
//# sourceMappingURL=splash-screen.service.js.map