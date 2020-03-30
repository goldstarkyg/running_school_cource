import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
/**
 * @title Stepper overview
 */
var StepperOverviewExample = /** @class */ (function () {
    function StepperOverviewExample(_formBuilder) {
        this._formBuilder = _formBuilder;
        this.isLinear = false;
    }
    StepperOverviewExample.prototype.ngOnInit = function () {
        this.firstFormGroup = this._formBuilder.group({
            firstCtrl: ['', Validators.required]
        });
        this.secondFormGroup = this._formBuilder.group({
            secondCtrl: ['', Validators.required]
        });
    };
    StepperOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'stepper-overview-example',
            templateUrl: 'stepper-overview-example.html',
            styleUrls: ['stepper-overview-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], StepperOverviewExample);
    return StepperOverviewExample;
}());
export { StepperOverviewExample };
//# sourceMappingURL=stepper-overview-example.js.map