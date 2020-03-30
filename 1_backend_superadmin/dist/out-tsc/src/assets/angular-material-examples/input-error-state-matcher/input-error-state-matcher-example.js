import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
/** Error when invalid control is dirty, touched, or submitted. */
var MyErrorStateMatcher = /** @class */ (function () {
    function MyErrorStateMatcher() {
    }
    MyErrorStateMatcher.prototype.isErrorState = function (control, form) {
        var isSubmitted = form && form.submitted;
        return !!(control && control.invalid && (control.dirty || control.touched || isSubmitted));
    };
    return MyErrorStateMatcher;
}());
export { MyErrorStateMatcher };
/** @title Input with a custom ErrorStateMatcher */
var InputErrorStateMatcherExample = /** @class */ (function () {
    function InputErrorStateMatcherExample() {
        this.emailFormControl = new FormControl('', [
            Validators.required,
            Validators.email,
        ]);
        this.matcher = new MyErrorStateMatcher();
    }
    InputErrorStateMatcherExample = tslib_1.__decorate([
        Component({
            selector: 'input-error-state-matcher-example',
            templateUrl: './input-error-state-matcher-example.html',
            styleUrls: ['./input-error-state-matcher-example.css'],
        })
    ], InputErrorStateMatcherExample);
    return InputErrorStateMatcherExample;
}());
export { InputErrorStateMatcherExample };
//# sourceMappingURL=input-error-state-matcher-example.js.map