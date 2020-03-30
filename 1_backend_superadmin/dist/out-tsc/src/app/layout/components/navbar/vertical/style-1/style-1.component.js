import * as tslib_1 from "tslib";
import { Component, ViewChild, ViewEncapsulation } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { Subject } from 'rxjs';
import { delay, filter, take, takeUntil } from 'rxjs/operators';
import { FuseConfigService } from '@fuse/services/config.service';
import { FuseNavigationService } from '@fuse/components/navigation/navigation.service';
import { FusePerfectScrollbarDirective } from '@fuse/directives/fuse-perfect-scrollbar/fuse-perfect-scrollbar.directive';
import { FuseSidebarService } from '@fuse/components/sidebar/sidebar.service';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
var NavbarVerticalStyle1Component = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
     * @param {FuseConfigService} _fuseConfigService
     * @param {FuseNavigationService} _fuseNavigationService
     * @param {FuseSidebarService} _fuseSidebarService
     * @param {Router} _router
     */
    function NavbarVerticalStyle1Component(_fuseConfigService, _fuseNavigationService, _fuseSidebarService, _router, _fuseTranslationLoaderService) {
        this._fuseConfigService = _fuseConfigService;
        this._fuseNavigationService = _fuseNavigationService;
        this._fuseSidebarService = _fuseSidebarService;
        this._router = _router;
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
    }
    Object.defineProperty(NavbarVerticalStyle1Component.prototype, "directive", {
        // -----------------------------------------------------------------------------------------------------
        // @ Accessors
        // -----------------------------------------------------------------------------------------------------
        // Directive
        set: function (theDirective) {
            var _this = this;
            if (!theDirective) {
                return;
            }
            this._fusePerfectScrollbar = theDirective;
            // Update the scrollbar on collapsable item toggle
            this._fuseNavigationService.onItemCollapseToggled
                .pipe(delay(500), takeUntil(this._unsubscribeAll))
                .subscribe(function () {
                _this._fusePerfectScrollbar.update();
            });
            // Scroll to the active item position
            this._router.events
                .pipe(filter(function (event) { return event instanceof NavigationEnd; }), take(1))
                .subscribe(function () {
                setTimeout(function () {
                    var activeNavItem = document.querySelector('navbar .nav-link.active');
                    if (activeNavItem) {
                        var activeItemOffsetTop = activeNavItem.offsetTop, activeItemOffsetParentTop = activeNavItem.offsetParent.offsetTop, scrollDistance = activeItemOffsetTop - activeItemOffsetParentTop - (48 * 3) - 168;
                        _this._fusePerfectScrollbar.scrollToTop(scrollDistance);
                    }
                });
            });
        },
        enumerable: true,
        configurable: true
    });
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    NavbarVerticalStyle1Component.prototype.ngOnInit = function () {
        var _this = this;
        this._router.events
            .pipe(filter(function (event) { return event instanceof NavigationEnd; }), takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            if (_this._fuseSidebarService.getSidebar('navbar')) {
                _this._fuseSidebarService.getSidebar('navbar').close();
            }
        });
        // Subscribe to the config changes
        this._fuseConfigService.config
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (config) {
            _this.fuseConfig = config;
        });
        // Get current navigation
        this._fuseNavigationService.onNavigationChanged
            .pipe(filter(function (value) { return value !== null; }), takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            _this.navigation = _this._fuseNavigationService.getCurrentNavigation();
        });
    };
    /**
     * On destroy
     */
    NavbarVerticalStyle1Component.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Toggle sidebar opened status
     */
    NavbarVerticalStyle1Component.prototype.toggleSidebarOpened = function () {
        this._fuseSidebarService.getSidebar('navbar').toggleOpen();
    };
    /**
     * Toggle sidebar folded status
     */
    NavbarVerticalStyle1Component.prototype.toggleSidebarFolded = function () {
        this._fuseSidebarService.getSidebar('navbar').toggleFold();
    };
    tslib_1.__decorate([
        ViewChild(FusePerfectScrollbarDirective),
        tslib_1.__metadata("design:type", FusePerfectScrollbarDirective),
        tslib_1.__metadata("design:paramtypes", [FusePerfectScrollbarDirective])
    ], NavbarVerticalStyle1Component.prototype, "directive", null);
    NavbarVerticalStyle1Component = tslib_1.__decorate([
        Component({
            selector: 'navbar-vertical-style-1',
            templateUrl: './style-1.component.html',
            styleUrls: ['./style-1.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__metadata("design:paramtypes", [FuseConfigService,
            FuseNavigationService,
            FuseSidebarService,
            Router,
            FuseTranslationLoaderService])
    ], NavbarVerticalStyle1Component);
    return NavbarVerticalStyle1Component;
}());
export { NavbarVerticalStyle1Component };
//# sourceMappingURL=style-1.component.js.map