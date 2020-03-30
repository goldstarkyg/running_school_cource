import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
/** @title Form field theming */
var FormFieldThemingExample = /** @class */ (function () {
    function FormFieldThemingExample(fb) {
        this.options = fb.group({
            color: 'primary',
            fontSize: [16, Validators.min(10)],
        });
    }
    FormFieldThemingExample.prototype.getFontSize = function () {
        return Math.max(10, this.options.value.fontSize);
    };
    FormFieldThemingExample = tslib_1.__decorate([
        Component({
            selector: 'form-field-theming-example',
            templateUrl: 'form-field-theming-example.html',
            styleUrls: ['form-field-theming-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], FormFieldThemingExample);
    return FormFieldThemingExample;
}());
export { FormFieldThemingExample };
//# sourceMappingURL=form-field-theming-example.js.map