import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
/**
 * @title Stepper vertical
 */
var StepperVerticalExample = /** @class */ (function () {
    function StepperVerticalExample(_formBuilder) {
        this._formBuilder = _formBuilder;
        this.isLinear = false;
    }
    StepperVerticalExample.prototype.ngOnInit = function () {
        this.firstFormGroup = this._formBuilder.group({
            firstCtrl: ['', Validators.required]
        });
        this.secondFormGroup = this._formBuilder.group({
            secondCtrl: ['', Validators.required]
        });
    };
    StepperVerticalExample = tslib_1.__decorate([
        Component({
            selector: 'stepper-vertical-example',
            templateUrl: 'stepper-vertical-example.html',
            styleUrls: ['stepper-vertical-example.css']
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], StepperVerticalExample);
    return StepperVerticalExample;
}());
export { StepperVerticalExample };
//# sourceMappingURL=stepper-vertical-example.js.map