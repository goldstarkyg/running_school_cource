import * as tslib_1 from "tslib";
import { Component, HostBinding, HostListener, Input } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FuseConfigService } from '@fuse/services/config.service';
var FuseNavHorizontalCollapsableComponent = /** @class */ (function () {
    function FuseNavHorizontalCollapsableComponent(_fuseConfigService) {
        this._fuseConfigService = _fuseConfigService;
        this.isOpen = false;
        this.classes = 'nav-collapsable nav-item';
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    FuseNavHorizontalCollapsableComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to config changes
        this._fuseConfigService.config
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (config) {
            _this.fuseConfig = config;
        });
    };
    /**
     * On destroy
     */
    FuseNavHorizontalCollapsableComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Open
     */
    FuseNavHorizontalCollapsableComponent.prototype.open = function () {
        this.isOpen = true;
    };
    /**
     * Close
     */
    FuseNavHorizontalCollapsableComponent.prototype.close = function () {
        this.isOpen = false;
    };
    tslib_1.__decorate([
        HostBinding('class'),
        tslib_1.__metadata("design:type", Object)
    ], FuseNavHorizontalCollapsableComponent.prototype, "classes", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], FuseNavHorizontalCollapsableComponent.prototype, "item", void 0);
    tslib_1.__decorate([
        HostListener('mouseenter'),
        tslib_1.__metadata("design:type", Function),
        tslib_1.__metadata("design:paramtypes", []),
        tslib_1.__metadata("design:returntype", void 0)
    ], FuseNavHorizontalCollapsableComponent.prototype, "open", null);
    tslib_1.__decorate([
        HostListener('mouseleave'),
        tslib_1.__metadata("design:type", Function),
        tslib_1.__metadata("design:paramtypes", []),
        tslib_1.__metadata("design:returntype", void 0)
    ], FuseNavHorizontalCollapsableComponent.prototype, "close", null);
    FuseNavHorizontalCollapsableComponent = tslib_1.__decorate([
        Component({
            selector: 'fuse-nav-horizontal-collapsable',
            templateUrl: './collapsable.component.html',
            styleUrls: ['./collapsable.component.scss'],
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [FuseConfigService])
    ], FuseNavHorizontalCollapsableComponent);
    return FuseNavHorizontalCollapsableComponent;
}());
export { FuseNavHorizontalCollapsableComponent };
//# sourceMappingURL=collapsable.component.js.map