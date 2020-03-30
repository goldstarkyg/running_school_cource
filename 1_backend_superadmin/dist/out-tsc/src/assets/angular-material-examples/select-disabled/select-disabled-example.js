import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/** @title Disabled select */
var SelectDisabledExample = /** @class */ (function () {
    function SelectDisabledExample() {
        this.disableSelect = new FormControl(false);
    }
    SelectDisabledExample = tslib_1.__decorate([
        Component({
            selector: 'select-disabled-example',
            templateUrl: 'select-disabled-example.html',
            styleUrls: ['select-disabled-example.css'],
        })
    ], SelectDisabledExample);
    return SelectDisabledExample;
}());
export { SelectDisabledExample };
//# sourceMappingURL=select-disabled-example.js.map