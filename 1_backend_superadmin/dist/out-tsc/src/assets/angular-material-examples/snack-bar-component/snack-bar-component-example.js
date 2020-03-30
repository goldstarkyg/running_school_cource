import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatSnackBar } from '@angular/material';
/**
 * @title Snack-bar with a custom component
 */
var SnackBarComponentExample = /** @class */ (function () {
    function SnackBarComponentExample(snackBar) {
        this.snackBar = snackBar;
    }
    SnackBarComponentExample.prototype.openSnackBar = function () {
        this.snackBar.openFromComponent(PizzaPartyComponent, {
            duration: 500,
        });
    };
    SnackBarComponentExample = tslib_1.__decorate([
        Component({
            selector: 'snack-bar-component-example',
            templateUrl: 'snack-bar-component-example.html',
        }),
        tslib_1.__metadata("design:paramtypes", [MatSnackBar])
    ], SnackBarComponentExample);
    return SnackBarComponentExample;
}());
export { SnackBarComponentExample };
var PizzaPartyComponent = /** @class */ (function () {
    function PizzaPartyComponent() {
    }
    PizzaPartyComponent = tslib_1.__decorate([
        Component({
            selector: 'snack-bar-component-example-snack',
            templateUrl: 'snack-bar-component-example-snack.html',
            styles: ["\n    .example-pizza-party {\n      color: hotpink;\n    }\n  "],
        })
    ], PizzaPartyComponent);
    return PizzaPartyComponent;
}());
export { PizzaPartyComponent };
//# sourceMappingURL=snack-bar-component-example.js.map