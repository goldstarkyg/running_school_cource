import * as tslib_1 from "tslib";
import { AutofillMonitor } from '@angular/cdk/text-field';
import { Component, ElementRef, ViewChild } from '@angular/core';
/** @title Monitoring autofill state with AutofillMonitor */
var TextFieldAutofillMonitorExample = /** @class */ (function () {
    function TextFieldAutofillMonitorExample(autofill) {
        this.autofill = autofill;
    }
    TextFieldAutofillMonitorExample.prototype.ngOnInit = function () {
        var _this = this;
        this.autofill.monitor(this.firstName)
            .subscribe(function (e) { return _this.firstNameAutofilled = e.isAutofilled; });
        this.autofill.monitor(this.lastName)
            .subscribe(function (e) { return _this.lastNameAutofilled = e.isAutofilled; });
    };
    TextFieldAutofillMonitorExample.prototype.ngOnDestroy = function () {
        this.autofill.stopMonitoring(this.firstName);
        this.autofill.stopMonitoring(this.lastName);
    };
    tslib_1.__decorate([
        ViewChild('first', { read: ElementRef }),
        tslib_1.__metadata("design:type", ElementRef)
    ], TextFieldAutofillMonitorExample.prototype, "firstName", void 0);
    tslib_1.__decorate([
        ViewChild('last', { read: ElementRef }),
        tslib_1.__metadata("design:type", ElementRef)
    ], TextFieldAutofillMonitorExample.prototype, "lastName", void 0);
    TextFieldAutofillMonitorExample = tslib_1.__decorate([
        Component({
            selector: 'text-field-autofill-monitor-example',
            templateUrl: './text-field-autofill-monitor-example.html',
            styleUrls: ['./text-field-autofill-monitor-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [AutofillMonitor])
    ], TextFieldAutofillMonitorExample);
    return TextFieldAutofillMonitorExample;
}());
export { TextFieldAutofillMonitorExample };
//# sourceMappingURL=text-field-autofill-monitor-example.js.map