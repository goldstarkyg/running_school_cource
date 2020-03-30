import * as tslib_1 from "tslib";
import { MediaObserver } from '@angular/flex-layout';
import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { debounceTime, distinctUntilChanged } from 'rxjs/operators';
var FuseMatchMediaService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MediaObserver} _mediaObserver
     */
    function FuseMatchMediaService(_mediaObserver) {
        this._mediaObserver = _mediaObserver;
        this.onMediaChange = new BehaviorSubject('');
        // Set the defaults
        this.activeMediaQuery = '';
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
    FuseMatchMediaService.prototype._init = function () {
        var _this = this;
        this._mediaObserver.media$
            .pipe(debounceTime(500), distinctUntilChanged())
            .subscribe(function (change) {
            if (_this.activeMediaQuery !== change.mqAlias) {
                _this.activeMediaQuery = change.mqAlias;
                _this.onMediaChange.next(change.mqAlias);
            }
        });
    };
    FuseMatchMediaService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [MediaObserver])
    ], FuseMatchMediaService);
    return FuseMatchMediaService;
}());
export { FuseMatchMediaService };
//# sourceMappingURL=match-media.service.js.map