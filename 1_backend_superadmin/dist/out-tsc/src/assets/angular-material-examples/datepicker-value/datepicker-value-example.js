import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/** @title Datepicker selected value */
var DatepickerValueExample = /** @class */ (function () {
    function DatepickerValueExample() {
        this.date = new FormControl(new Date());
        this.serializedDate = new FormControl((new Date()).toISOString());
    }
    DatepickerValueExample = tslib_1.__decorate([
        Component({
            selector: 'datepicker-value-example',
            templateUrl: 'datepicker-value-example.html',
            styleUrls: ['datepicker-value-example.css'],
        })
    ], DatepickerValueExample);
    return DatepickerValueExample;
}());
export { DatepickerValueExample };
//# sourceMappingURL=datepicker-value-example.js.map