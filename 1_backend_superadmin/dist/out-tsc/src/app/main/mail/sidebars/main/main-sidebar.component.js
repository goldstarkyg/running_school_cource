import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { MatDialog } from '@angular/material';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { MailService } from 'app/main/mail/mail.service';
import { MailComposeDialogComponent } from 'app/main/mail/dialogs/compose/compose.component';
var MailMainSidebarComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MailService} _mailService
     * @param {MatDialog} _matDialog
     */
    function MailMainSidebarComponent(_mailService, _matDialog) {
        this._mailService = _mailService;
        this._matDialog = _matDialog;
        // Set the defaults
        this.accounts = {
            'creapond': 'johndoe@creapond.com',
            'withinpixels': 'johndoe@withinpixels.com'
        };
        this.selectedAccount = 'creapond';
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    MailMainSidebarComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._mailService.onFoldersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (folders) {
            _this.folders = folders;
        });
        this._mailService.onFiltersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (filters) {
            _this.filters = filters;
        });
        this._mailService.onLabelsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (labels) {
            _this.labels = labels;
        });
    };
    /**
     * On destroy
     */
    MailMainSidebarComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Compose dialog
     */
    MailMainSidebarComponent.prototype.composeDialog = function () {
        this.dialogRef = this._matDialog.open(MailComposeDialogComponent, {
            panelClass: 'mail-compose-dialog'
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
                 * Send
                 */
                case 'send':
                    break;
                /**
                 * Delete
                 */
                case 'delete':
                    break;
            }
        });
    };
    MailMainSidebarComponent = tslib_1.__decorate([
        Component({
            selector: 'mail-main-sidebar',
            templateUrl: './main-sidebar.component.html',
            styleUrls: ['./main-sidebar.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [MailService,
            MatDialog])
    ], MailMainSidebarComponent);
    return MailMainSidebarComponent;
}());
export { MailMainSidebarComponent };
//# sourceMappingURL=main-sidebar.component.js.map