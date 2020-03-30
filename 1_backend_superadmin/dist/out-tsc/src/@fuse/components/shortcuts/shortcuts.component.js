import * as tslib_1 from "tslib";
import { Component, ElementRef, Input, Renderer2, ViewChild } from '@angular/core';
import { MediaObserver } from '@angular/flex-layout';
import { CookieService } from 'ngx-cookie-service';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { FuseMatchMediaService } from '@fuse/services/match-media.service';
import { FuseNavigationService } from '@fuse/components/navigation/navigation.service';
var FuseShortcutsComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {CookieService} _cookieService
     * @param {FuseMatchMediaService} _fuseMatchMediaService
     * @param {FuseNavigationService} _fuseNavigationService
     * @param {MediaObserver} _mediaObserver
     * @param {Renderer2} _renderer
     */
    function FuseShortcutsComponent(_cookieService, _fuseMatchMediaService, _fuseNavigationService, _mediaObserver, _renderer) {
        this._cookieService = _cookieService;
        this._fuseMatchMediaService = _fuseMatchMediaService;
        this._fuseNavigationService = _fuseNavigationService;
        this._mediaObserver = _mediaObserver;
        this._renderer = _renderer;
        // Set the defaults
        this.shortcutItems = [];
        this.searching = false;
        this.mobileShortcutsPanelActive = false;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    FuseShortcutsComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Get the navigation items and flatten them
        this.filteredNavigationItems = this.navigationItems = this._fuseNavigationService.getFlatNavigation(this.navigation);
        if (this._cookieService.check('FUSE2.shortcuts')) {
            this.shortcutItems = JSON.parse(this._cookieService.get('FUSE2.shortcuts'));
        }
        else {
            // User's shortcut items
            this.shortcutItems = [
                {
                    'title': 'Calendar',
                    'type': 'item',
                    'icon': 'today',
                    'url': '/apps/calendar'
                },
                {
                    'title': 'Mail',
                    'type': 'item',
                    'icon': 'email',
                    'url': '/apps/mail'
                },
                {
                    'title': 'Contacts',
                    'type': 'item',
                    'icon': 'account_box',
                    'url': '/apps/contacts'
                },
                {
                    'title': 'To-Do',
                    'type': 'item',
                    'icon': 'check_box',
                    'url': '/apps/todo'
                }
            ];
        }
        // Subscribe to media changes
        this._fuseMatchMediaService.onMediaChange
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            if (_this._mediaObserver.isActive('gt-sm')) {
                _this.hideMobileShortcutsPanel();
            }
        });
    };
    /**
     * On destroy
     */
    FuseShortcutsComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Search
     *
     * @param event
     */
    FuseShortcutsComponent.prototype.search = function (event) {
        var value = event.target.value.toLowerCase();
        if (value === '') {
            this.searching = false;
            this.filteredNavigationItems = this.navigationItems;
            return;
        }
        this.searching = true;
        this.filteredNavigationItems = this.navigationItems.filter(function (navigationItem) {
            return navigationItem.title.toLowerCase().includes(value);
        });
    };
    /**
     * Toggle shortcut
     *
     * @param event
     * @param itemToToggle
     */
    FuseShortcutsComponent.prototype.toggleShortcut = function (event, itemToToggle) {
        event.stopPropagation();
        for (var i = 0; i < this.shortcutItems.length; i++) {
            if (this.shortcutItems[i].url === itemToToggle.url) {
                this.shortcutItems.splice(i, 1);
                // Save to the cookies
                this._cookieService.set('FUSE2.shortcuts', JSON.stringify(this.shortcutItems));
                return;
            }
        }
        this.shortcutItems.push(itemToToggle);
        // Save to the cookies
        this._cookieService.set('FUSE2.shortcuts', JSON.stringify(this.shortcutItems));
    };
    /**
     * Is in shortcuts?
     *
     * @param navigationItem
     * @returns {any}
     */
    FuseShortcutsComponent.prototype.isInShortcuts = function (navigationItem) {
        return this.shortcutItems.find(function (item) {
            return item.url === navigationItem.url;
        });
    };
    /**
     * On menu open
     */
    FuseShortcutsComponent.prototype.onMenuOpen = function () {
        var _this = this;
        setTimeout(function () {
            _this.searchInputField.nativeElement.focus();
        });
    };
    /**
     * Show mobile shortcuts
     */
    FuseShortcutsComponent.prototype.showMobileShortcutsPanel = function () {
        this.mobileShortcutsPanelActive = true;
        this._renderer.addClass(this.shortcutsEl.nativeElement, 'show-mobile-panel');
    };
    /**
     * Hide mobile shortcuts
     */
    FuseShortcutsComponent.prototype.hideMobileShortcutsPanel = function () {
        this.mobileShortcutsPanelActive = false;
        this._renderer.removeClass(this.shortcutsEl.nativeElement, 'show-mobile-panel');
    };
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], FuseShortcutsComponent.prototype, "navigation", void 0);
    tslib_1.__decorate([
        ViewChild('searchInput'),
        tslib_1.__metadata("design:type", Object)
    ], FuseShortcutsComponent.prototype, "searchInputField", void 0);
    tslib_1.__decorate([
        ViewChild('shortcuts'),
        tslib_1.__metadata("design:type", ElementRef)
    ], FuseShortcutsComponent.prototype, "shortcutsEl", void 0);
    FuseShortcutsComponent = tslib_1.__decorate([
        Component({
            selector: 'fuse-shortcuts',
            templateUrl: './shortcuts.component.html',
            styleUrls: ['./shortcuts.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [CookieService,
            FuseMatchMediaService,
            FuseNavigationService,
            MediaObserver,
            Renderer2])
    ], FuseShortcutsComponent);
    return FuseShortcutsComponent;
}());
export { FuseShortcutsComponent };
//# sourceMappingURL=shortcuts.component.js.map