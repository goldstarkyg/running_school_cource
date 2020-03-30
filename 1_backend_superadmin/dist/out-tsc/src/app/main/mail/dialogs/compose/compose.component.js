import * as tslib_1 from "tslib";
import { Component, Inject, ViewEncapsulation } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';
var MailComposeDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<MailComposeDialogComponent>} matDialogRef
     * @param _data
     */
    function MailComposeDialogComponent(matDialogRef, _data) {
        this.matDialogRef = matDialogRef;
        this._data = _data;
        // Set the defaults
        this.composeForm = this.createComposeForm();
        this.showExtraToFields = false;
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create compose form
     *
     * @returns {FormGroup}
     */
    MailComposeDialogComponent.prototype.createComposeForm = function () {
        return new FormGroup({
            from: new FormControl({
                value: 'johndoe@creapond.com',
                disabled: true
            }),
            to: new FormControl(''),
            cc: new FormControl(''),
            bcc: new FormControl(''),
            subject: new FormControl(''),
            message: new FormControl('')
        });
    };
    /**
     * Toggle extra to fields
     */
    MailComposeDialogComponent.prototype.toggleExtraToFields = function () {
        this.showExtraToFields = !this.showExtraToFields;
    };
    MailComposeDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'mail-compose',
            templateUrl: './compose.component.html',
            styleUrls: ['./compose.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__param(1, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef, Object])
    ], MailComposeDialogComponent);
    return MailComposeDialogComponent;
}());
export { MailComposeDialogComponent };
//# sourceMappingURL=compose.component.js.map