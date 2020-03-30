import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
/**
 * @title Stepper with optional steps
 */
var StepperOptionalExample = /** @class */ (function () {
    function StepperOptionalExample(_formBuilder) {
        this._formBuilder = _formBuilder;
        this.isOptional = false;
    }
    StepperOptionalExample.prototype.ngOnInit = function () {
        this.firstFormGroup = this._formBuilder.group({
            firstCtrl: ['', Validators.required]
        });
        this.secondFormGroup = this._formBuilder.group({
            secondCtrl: ''
        });
    };
    StepperOptionalExample = tslib_1.__decorate([
        Component({
            selector: 'stepper-optional-example',
            templateUrl: 'stepper-optional-example.html',
            styleUrls: ['stepper-optional-example.css']
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], StepperOptionalExample);
    return StepperOptionalExample;
}());
export { StepperOptionalExample };
//# sourceMappingURL=stepper-optional-example.js.map