import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
/**
 * @title Stepper with editable steps
 */
var StepperEditableExample = /** @class */ (function () {
    function StepperEditableExample(_formBuilder) {
        this._formBuilder = _formBuilder;
        this.isEditable = false;
    }
    StepperEditableExample.prototype.ngOnInit = function () {
        this.firstFormGroup = this._formBuilder.group({
            firstCtrl: ['', Validators.required]
        });
        this.secondFormGroup = this._formBuilder.group({
            secondCtrl: ['', Validators.required]
        });
    };
    StepperEditableExample = tslib_1.__decorate([
        Component({
            selector: 'stepper-editable-example',
            templateUrl: 'stepper-editable-example.html',
            styleUrls: ['stepper-editable-example.css']
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], StepperEditableExample);
    return StepperEditableExample;
}());
export { StepperEditableExample };
//# sourceMappingURL=stepper-editable-example.js.map