import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { ContactsService } from 'app/main/contacts/contacts.service';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from '../../i18n/en';
import { locale as italian } from '../../i18n/it';
var ContactsMainSidebarComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ContactsService} _contactsService
     */
    function ContactsMainSidebarComponent(_contactsService, _fuseTranslationLoaderService) {
        this._contactsService = _contactsService;
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    ContactsMainSidebarComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.filterBy = this._contactsService.filterBy || 'all';
        this._contactsService.onUserDataChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (user) {
            _this.user = user;
        });
    };
    /**
     * On destroy
     */
    ContactsMainSidebarComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Change the filter
     *
     * @param filter
     */
    ContactsMainSidebarComponent.prototype.changeFilter = function (filter) {
        this.filterBy = filter;
        this._contactsService.onFilterChanged.next(this.filterBy);
    };
    ContactsMainSidebarComponent = tslib_1.__decorate([
        Component({
            selector: 'contacts-main-sidebar',
            templateUrl: './main.component.html',
            styleUrls: ['./main.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ContactsService,
            FuseTranslationLoaderService])
    ], ContactsMainSidebarComponent);
    return ContactsMainSidebarComponent;
}());
export { ContactsMainSidebarComponent };
//# sourceMappingURL=main.component.js.map