import * as tslib_1 from "tslib";
import { Component, Inject } from '@angular/core';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
/**
 * @title Dialog Overview
 */
var DialogOverviewExample = /** @class */ (function () {
    function DialogOverviewExample(dialog) {
        this.dialog = dialog;
    }
    DialogOverviewExample.prototype.openDialog = function () {
        var _this = this;
        var dialogRef = this.dialog.open(DialogOverviewExampleDialog, {
            width: '250px',
            data: { name: this.name, animal: this.animal }
        });
        dialogRef.afterClosed().subscribe(function (result) {
            _this.animal = result;
        });
    };
    DialogOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'dialog-overview-example',
            templateUrl: 'dialog-overview-example.html',
            styleUrls: ['dialog-overview-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [MatDialog])
    ], DialogOverviewExample);
    return DialogOverviewExample;
}());
export { DialogOverviewExample };
var DialogOverviewExampleDialog = /** @class */ (function () {
    function DialogOverviewExampleDialog(dialogRef, data) {
        this.dialogRef = dialogRef;
        this.data = data;
    }
    DialogOverviewExampleDialog.prototype.onNoClick = function () {
        this.dialogRef.close();
    };
    DialogOverviewExampleDialog = tslib_1.__decorate([
        Component({
            selector: 'dialog-overview-example-dialog',
            templateUrl: 'dialog-overview-example-dialog.html',
        }),
        tslib_1.__param(1, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef, Object])
    ], DialogOverviewExampleDialog);
    return DialogOverviewExampleDialog;
}());
export { DialogOverviewExampleDialog };
//# sourceMappingURL=dialog-overview-example.js.map