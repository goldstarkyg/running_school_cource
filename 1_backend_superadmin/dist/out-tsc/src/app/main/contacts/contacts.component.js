import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { FormControl } from '@angular/forms';
import { MatDialog } from '@angular/material';
import { Subject } from 'rxjs';
import { debounceTime, distinctUntilChanged, takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FuseSidebarService } from '@fuse/components/sidebar/sidebar.service';
import { ContactsService } from 'app/main/contacts/contacts.service';
import { ContactsContactFormDialogComponent } from 'app/main/contacts/contact-form/contact-form.component';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
var ContactsComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ContactsService} _contactsService
     * @param {FuseSidebarService} _fuseSidebarService
     * @param {MatDialog} _matDialog
     * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
     */
    function ContactsComponent(_contactsService, _fuseSidebarService, _matDialog, _fuseTranslationLoaderService) {
        this._contactsService = _contactsService;
        this._fuseSidebarService = _fuseSidebarService;
        this._matDialog = _matDialog;
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        // Set the defaults
        this.searchInput = new FormControl('');
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
    ContactsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._contactsService.onSelectedContactsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedContacts) {
            _this.hasSelectedContacts = selectedContacts.length > 0;
        });
        this.searchInput.valueChanges
            .pipe(takeUntil(this._unsubscribeAll), debounceTime(300), distinctUntilChanged())
            .subscribe(function (searchText) {
            _this._contactsService.onSearchTextChanged.next(searchText);
        });
    };
    /**
     * On destroy
     */
    ContactsComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * New contact
     */
    ContactsComponent.prototype.newContact = function () {
        var _this = this;
        this.dialogRef = this._matDialog.open(ContactsContactFormDialogComponent, {
            panelClass: 'contact-form-dialog',
            data: {
                action: 'new'
            }
        });
        this.dialogRef.afterClosed()
            .subscribe(function (response) {
            if (!response) {
                return;
            }
            _this._contactsService.updateContact(response.getRawValue());
        });
    };
    /**
     * Toggle the sidebar
     *
     * @param name
     */
    ContactsComponent.prototype.toggleSidebar = function (name) {
        this._fuseSidebarService.getSidebar(name).toggleOpen();
    };
    ContactsComponent = tslib_1.__decorate([
        Component({
            selector: 'contacts',
            templateUrl: './contacts.component.html',
            styleUrls: ['./contacts.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [ContactsService,
            FuseSidebarService,
            MatDialog,
            FuseTranslationLoaderService])
    ], ContactsComponent);
    return ContactsComponent;
}());
export { ContactsComponent };
//# sourceMappingURL=contacts.component.js.map