import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/** @title Datepicker input and change events */
var DatepickerEventsExample = /** @class */ (function () {
    function DatepickerEventsExample() {
        this.events = [];
    }
    DatepickerEventsExample.prototype.addEvent = function (type, event) {
        this.events.push(type + ": " + event.value);
    };
    DatepickerEventsExample = tslib_1.__decorate([
        Component({
            selector: 'datepicker-events-example',
            templateUrl: 'datepicker-events-example.html',
            styleUrls: ['datepicker-events-example.css'],
        })
    ], DatepickerEventsExample);
    return DatepickerEventsExample;
}());
export { DatepickerEventsExample };
//# sourceMappingURL=datepicker-events-example.js.map