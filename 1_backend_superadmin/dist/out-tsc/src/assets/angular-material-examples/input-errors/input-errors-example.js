import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
/**
 * @title Input with error messages
 */
var InputErrorsExample = /** @class */ (function () {
    function InputErrorsExample() {
        this.emailFormControl = new FormControl('', [
            Validators.required,
            Validators.email,
        ]);
    }
    InputErrorsExample = tslib_1.__decorate([
        Component({
            selector: 'input-errors-example',
            templateUrl: 'input-errors-example.html',
            styleUrls: ['input-errors-example.css'],
        })
    ], InputErrorsExample);
    return InputErrorsExample;
}());
export { InputErrorsExample };
//# sourceMappingURL=input-errors-example.js.map