import * as tslib_1 from "tslib";
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, TemplateRef, ViewChild, ViewEncapsulation, isDevMode } from '@angular/core';
import { MatDialog } from '@angular/material';
import { DataSource } from '@angular/cdk/collections';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { ContactsService } from 'app/main/contacts/contacts.service';
import { ContactsContactFormDialogComponent } from 'app/main/contacts/contact-form/contact-form.component';
var ContactsContactListComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ContactsService} _contactsService
     * @param {MatDialog} _matDialog
     */
    function ContactsContactListComponent(_contactsService, _matDialog) {
        this._contactsService = _contactsService;
        this._matDialog = _matDialog;
        // urlHeader = 'http://localhost';
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        // displayedColumns = ['checkbox', 'pic', 'name', 'role', 'email', 'phone', 'status', 'comment', 'buttons'];
        this.displayedColumns = ['checkbox', 'name', 'role', 'email', 'phone', 'status', 'comment', 'buttons'];
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    ContactsContactListComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.dataSource = new FilesDataSource(this._contactsService);
        this._contactsService.onContactsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (contacts) {
            _this.contacts = contacts;
            _this.checkboxes = {};
            contacts.map(function (contact) {
                _this.checkboxes[contact.id] = false;
            });
        });
        this._contactsService.onSelectedContactsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedContacts) {
            for (var id in _this.checkboxes) {
                if (!_this.checkboxes.hasOwnProperty(id)) {
                    continue;
                }
                _this.checkboxes[id] = selectedContacts.includes(id);
            }
            _this.selectedContacts = selectedContacts;
        });
        this._contactsService.onUserDataChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (user) {
            _this.user = user;
        });
        this._contactsService.onFilterChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            _this._contactsService.deselectContacts();
        });
    };
    /**
     * On destroy
     */
    ContactsContactListComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Edit contact
     *
     * @param contact
     */
    ContactsContactListComponent.prototype.editContact = function (contact) {
        var _this = this;
        this.dialogRef = this._matDialog.open(ContactsContactFormDialogComponent, {
            panelClass: 'contact-form-dialog',
            data: {
                contact: contact,
                action: 'edit'
            }
        });
        this.dialogRef.afterClosed()
            .subscribe(function (response) {
            if (!response) {
                return;
            }
            var actionType = response[0];
            var formData = response[1];
            switch (actionType) {
                /**
                 * Save
                 */
                case 'save':
                    _this.approveContact(contact);
                    break;
                /**
                 * Delete
                 */
                case 'delete':
                    _this.deleteContact(contact);
                    break;
            }
        });
    };
    /**
     * Approve Contact
     */
    ContactsContactListComponent.prototype.approveContact = function (contact) {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to approve?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                _this._contactsService.approveContact(contact.id);
            }
            _this.confirmDialogRef = null;
        });
    };
    /**
     * Delete Contact
     */
    ContactsContactListComponent.prototype.deleteContact = function (contact) {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to delete?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                _this._contactsService.deleteContact(contact);
            }
            _this.confirmDialogRef = null;
        });
    };
    /**
     * On selected change
     *
     * @param contactId
     */
    ContactsContactListComponent.prototype.onSelectedChange = function (contactId) {
        this._contactsService.toggleSelectedContact(contactId);
    };
    /**
     * Toggle star
     *
     * @param contactId
     */
    ContactsContactListComponent.prototype.toggleStar = function (contactId) {
        if (this.user.starred.includes(contactId)) {
            this.user.starred.splice(this.user.starred.indexOf(contactId), 1);
        }
        else {
            this.user.starred.push(contactId);
        }
        // this._contactsService.updateUserData(this.user);
    };
    tslib_1.__decorate([
        ViewChild('dialogContent'),
        tslib_1.__metadata("design:type", TemplateRef)
    ], ContactsContactListComponent.prototype, "dialogContent", void 0);
    ContactsContactListComponent = tslib_1.__decorate([
        Component({
            selector: 'contacts-contact-list',
            templateUrl: './contact-list.component.html',
            styleUrls: ['./contact-list.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [ContactsService,
            MatDialog])
    ], ContactsContactListComponent);
    return ContactsContactListComponent;
}());
export { ContactsContactListComponent };
var FilesDataSource = /** @class */ (function (_super) {
    tslib_1.__extends(FilesDataSource, _super);
    /**
     * Constructor
     *
     * @param {ContactsService} _contactsService
     */
    function FilesDataSource(_contactsService) {
        var _this = _super.call(this) || this;
        _this._contactsService = _contactsService;
        return _this;
    }
    /**
     * Connect function called by the table to retrieve one stream containing the data to render.
     * @returns {Observable<any[]>}
     */
    FilesDataSource.prototype.connect = function () {
        return this._contactsService.onContactsChanged;
    };
    /**
     * Disconnect
     */
    FilesDataSource.prototype.disconnect = function () {
    };
    return FilesDataSource;
}(DataSource));
export { FilesDataSource };
//# sourceMappingURL=contact-list.component.js.map