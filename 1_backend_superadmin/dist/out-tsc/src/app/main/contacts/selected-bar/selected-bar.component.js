import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatDialog } from '@angular/material';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { ContactsService } from 'app/main/contacts/contacts.service';
var ContactsSelectedBarComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ContactsService} _contactsService
     * @param {MatDialog} _matDialog
     */
    function ContactsSelectedBarComponent(_contactsService, _matDialog) {
        this._contactsService = _contactsService;
        this._matDialog = _matDialog;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    ContactsSelectedBarComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._contactsService.onSelectedContactsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedContacts) {
            _this.selectedContacts = selectedContacts;
            setTimeout(function () {
                _this.hasSelectedContacts = selectedContacts.length > 0;
                _this.isIndeterminate = (selectedContacts.length !== _this._contactsService.contacts.length && selectedContacts.length > 0);
            }, 0);
        });
    };
    /**
     * On destroy
     */
    ContactsSelectedBarComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Select all
     */
    ContactsSelectedBarComponent.prototype.selectAll = function () {
        this._contactsService.selectContacts();
    };
    /**
     * Deselect all
     */
    ContactsSelectedBarComponent.prototype.deselectAll = function () {
        this._contactsService.deselectContacts();
    };
    /**
     * Delete selected contacts
     */
    ContactsSelectedBarComponent.prototype.deleteSelectedContacts = function () {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to delete all selected contacts?';
        this.confirmDialogRef.afterClosed()
            .subscribe(function (result) {
            if (result) {
                _this._contactsService.deleteSelectedContacts();
            }
            _this.confirmDialogRef = null;
        });
    };
    ContactsSelectedBarComponent = tslib_1.__decorate([
        Component({
            selector: 'selected-bar',
            templateUrl: './selected-bar.component.html',
            styleUrls: ['./selected-bar.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ContactsService,
            MatDialog])
    ], ContactsSelectedBarComponent);
    return ContactsSelectedBarComponent;
}());
export { ContactsSelectedBarComponent };
//# sourceMappingURL=selected-bar.component.js.map