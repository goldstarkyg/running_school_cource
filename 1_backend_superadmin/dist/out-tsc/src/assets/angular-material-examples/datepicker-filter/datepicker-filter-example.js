import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/** @title Datepicker with filter validation */
var DatepickerFilterExample = /** @class */ (function () {
    function DatepickerFilterExample() {
        this.myFilter = function (d) {
            var day = d.getDay();
            // Prevent Saturday and Sunday from being selected.
            return day !== 0 && day !== 6;
        };
    }
    DatepickerFilterExample = tslib_1.__decorate([
        Component({
            selector: 'datepicker-filter-example',
            templateUrl: 'datepicker-filter-example.html',
            styleUrls: ['datepicker-filter-example.css'],
        })
    ], DatepickerFilterExample);
    return DatepickerFilterExample;
}());
export { DatepickerFilterExample };
//# sourceMappingURL=datepicker-filter-example.js.map