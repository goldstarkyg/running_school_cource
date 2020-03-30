import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { Subject } from 'rxjs';
import { filter, takeUntil } from 'rxjs/operators';
import { FuseConfigService } from '@fuse/services/config.service';
import { FuseNavigationService } from '@fuse/components/navigation/navigation.service';
import { FuseSidebarService } from '@fuse/components/sidebar/sidebar.service';
var NavbarHorizontalStyle1Component = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {FuseConfigService} _fuseConfigService
     * @param {FuseNavigationService} _fuseNavigationService
     * @param {FuseSidebarService} _fuseSidebarService
     */
    function NavbarHorizontalStyle1Component(_fuseConfigService, _fuseNavigationService, _fuseSidebarService) {
        this._fuseConfigService = _fuseConfigService;
        this._fuseNavigationService = _fuseNavigationService;
        this._fuseSidebarService = _fuseSidebarService;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    NavbarHorizontalStyle1Component.prototype.ngOnInit = function () {
        var _this = this;
        // Get current navigation
        this._fuseNavigationService.onNavigationChanged
            .pipe(filter(function (value) { return value !== null; }), takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            _this.navigation = _this._fuseNavigationService.getCurrentNavigation();
        });
        // Subscribe to the config changes
        this._fuseConfigService.config
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (config) {
            _this.fuseConfig = config;
        });
    };
    /**
     * On destroy
     */
    NavbarHorizontalStyle1Component.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    NavbarHorizontalStyle1Component = tslib_1.__decorate([
        Component({
            selector: 'navbar-horizontal-style-1',
            templateUrl: './style-1.component.html',
            styleUrls: ['./style-1.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__metadata("design:paramtypes", [FuseConfigService,
            FuseNavigationService,
            FuseSidebarService])
    ], NavbarHorizontalStyle1Component);
    return NavbarHorizontalStyle1Component;
}());
export { NavbarHorizontalStyle1Component };
//# sourceMappingURL=style-1.component.js.map