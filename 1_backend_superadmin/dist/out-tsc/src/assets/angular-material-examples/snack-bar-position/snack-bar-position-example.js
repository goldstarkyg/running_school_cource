import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatSnackBar, } from '@angular/material';
/**
 * @title Snack-bar with configurable position
 */
var SnackBarPositionExample = /** @class */ (function () {
    function SnackBarPositionExample(snackBar) {
        this.snackBar = snackBar;
        this.horizontalPosition = 'start';
        this.verticalPosition = 'bottom';
    }
    SnackBarPositionExample.prototype.openSnackBar = function () {
        this.snackBar.open('Canonball!!', 'End now', {
            duration: 500,
            horizontalPosition: this.horizontalPosition,
            verticalPosition: this.verticalPosition,
        });
    };
    SnackBarPositionExample = tslib_1.__decorate([
        Component({
            selector: 'snack-bar-position-example',
            templateUrl: 'snack-bar-position-example.html',
        }),
        tslib_1.__metadata("design:paramtypes", [MatSnackBar])
    ], SnackBarPositionExample);
    return SnackBarPositionExample;
}());
export { SnackBarPositionExample };
//# sourceMappingURL=snack-bar-position-example.js.map