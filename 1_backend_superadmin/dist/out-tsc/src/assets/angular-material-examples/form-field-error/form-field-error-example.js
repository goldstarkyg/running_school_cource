import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
/** @title Form field with error messages */
var FormFieldErrorExample = /** @class */ (function () {
    function FormFieldErrorExample() {
        this.email = new FormControl('', [Validators.required, Validators.email]);
    }
    FormFieldErrorExample.prototype.getErrorMessage = function () {
        return this.email.hasError('required') ? 'You must enter a value' :
            this.email.hasError('email') ? 'Not a valid email' :
                '';
    };
    FormFieldErrorExample = tslib_1.__decorate([
        Component({
            selector: 'form-field-error-example',
            templateUrl: 'form-field-error-example.html',
            styleUrls: ['form-field-error-example.css'],
        })
    ], FormFieldErrorExample);
    return FormFieldErrorExample;
}());
export { FormFieldErrorExample };
//# sourceMappingURL=form-field-error-example.js.map