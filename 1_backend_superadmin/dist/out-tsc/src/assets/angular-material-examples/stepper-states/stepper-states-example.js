import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { MAT_STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
/**
 * @title Stepper with customized states
 */
var StepperStatesExample = /** @class */ (function () {
    function StepperStatesExample(_formBuilder) {
        this._formBuilder = _formBuilder;
    }
    StepperStatesExample.prototype.ngOnInit = function () {
        this.firstFormGroup = this._formBuilder.group({
            firstCtrl: ['', Validators.required]
        });
        this.secondFormGroup = this._formBuilder.group({
            secondCtrl: ['', Validators.required]
        });
    };
    StepperStatesExample = tslib_1.__decorate([
        Component({
            selector: 'stepper-states-example',
            templateUrl: 'stepper-states-example.html',
            styleUrls: ['stepper-states-example.css'],
            providers: [{
                    provide: MAT_STEPPER_GLOBAL_OPTIONS, useValue: { displayDefaultIndicatorType: false }
                }]
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], StepperStatesExample);
    return StepperStatesExample;
}());
export { StepperStatesExample };
//# sourceMappingURL=stepper-states-example.js.map