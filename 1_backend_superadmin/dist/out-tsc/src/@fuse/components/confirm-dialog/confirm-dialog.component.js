import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatDialogRef } from '@angular/material';
var FuseConfirmDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<FuseConfirmDialogComponent>} dialogRef
     */
    function FuseConfirmDialogComponent(dialogRef) {
        this.dialogRef = dialogRef;
    }
    FuseConfirmDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'fuse-confirm-dialog',
            templateUrl: './confirm-dialog.component.html',
            styleUrls: ['./confirm-dialog.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef])
    ], FuseConfirmDialogComponent);
    return FuseConfirmDialogComponent;
}());
export { FuseConfirmDialogComponent };
//# sourceMappingURL=confirm-dialog.component.js.map