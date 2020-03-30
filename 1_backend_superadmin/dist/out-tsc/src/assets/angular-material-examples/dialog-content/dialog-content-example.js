import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatDialog } from '@angular/material';
/**
 * @title Dialog with header, scrollable content and actions
 */
var DialogContentExample = /** @class */ (function () {
    function DialogContentExample(dialog) {
        this.dialog = dialog;
    }
    DialogContentExample.prototype.openDialog = function () {
        var dialogRef = this.dialog.open(DialogContentExampleDialog);
        dialogRef.afterClosed().subscribe(function (result) {
        });
    };
    DialogContentExample = tslib_1.__decorate([
        Component({
            selector: 'dialog-content-example',
            templateUrl: 'dialog-content-example.html',
            styleUrls: ['dialog-content-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [MatDialog])
    ], DialogContentExample);
    return DialogContentExample;
}());
export { DialogContentExample };
var DialogContentExampleDialog = /** @class */ (function () {
    function DialogContentExampleDialog() {
    }
    DialogContentExampleDialog = tslib_1.__decorate([
        Component({
            selector: 'dialog-content-example-dialog',
            templateUrl: 'dialog-content-example-dialog.html',
        })
    ], DialogContentExampleDialog);
    return DialogContentExampleDialog;
}());
export { DialogContentExampleDialog };
//# sourceMappingURL=dialog-content-example.js.map