import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatSnackBar } from '@angular/material';
/**
 * @title Basic snack-bar
 */
var SnackBarOverviewExample = /** @class */ (function () {
    function SnackBarOverviewExample(snackBar) {
        this.snackBar = snackBar;
    }
    SnackBarOverviewExample.prototype.openSnackBar = function (message, action) {
        this.snackBar.open(message, action, {
            duration: 2000,
        });
    };
    SnackBarOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'snack-bar-overview-example',
            templateUrl: 'snack-bar-overview-example.html',
            styleUrls: ['snack-bar-overview-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [MatSnackBar])
    ], SnackBarOverviewExample);
    return SnackBarOverviewExample;
}());
export { SnackBarOverviewExample };
//# sourceMappingURL=snack-bar-overview-example.js.map