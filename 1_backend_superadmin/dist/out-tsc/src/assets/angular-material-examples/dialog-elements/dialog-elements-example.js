import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatDialog } from '@angular/material';
/**
 * @title Dialog elements
 */
var DialogElementsExample = /** @class */ (function () {
    function DialogElementsExample(dialog) {
        this.dialog = dialog;
    }
    DialogElementsExample.prototype.openDialog = function () {
        this.dialog.open(DialogElementsExampleDialog);
    };
    DialogElementsExample = tslib_1.__decorate([
        Component({
            selector: 'dialog-elements-example',
            templateUrl: 'dialog-elements-example.html',
            styleUrls: ['dialog-elements-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [MatDialog])
    ], DialogElementsExample);
    return DialogElementsExample;
}());
export { DialogElementsExample };
var DialogElementsExampleDialog = /** @class */ (function () {
    function DialogElementsExampleDialog() {
    }
    DialogElementsExampleDialog = tslib_1.__decorate([
        Component({
            selector: 'dialog-elements-example-dialog',
            templateUrl: 'dialog-elements-example-dialog.html',
        })
    ], DialogElementsExampleDialog);
    return DialogElementsExampleDialog;
}());
export { DialogElementsExampleDialog };
//# sourceMappingURL=dialog-elements-example.js.map