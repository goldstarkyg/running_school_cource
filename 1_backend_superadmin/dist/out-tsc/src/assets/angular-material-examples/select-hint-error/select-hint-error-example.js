import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
/** @title Select with form field features */
var SelectHintErrorExample = /** @class */ (function () {
    function SelectHintErrorExample() {
        this.animalControl = new FormControl('', [Validators.required]);
        this.selectFormControl = new FormControl('', Validators.required);
        this.animals = [
            { name: 'Dog', sound: 'Woof!' },
            { name: 'Cat', sound: 'Meow!' },
            { name: 'Cow', sound: 'Moo!' },
            { name: 'Fox', sound: 'Wa-pa-pa-pa-pa-pa-pow!' },
        ];
    }
    SelectHintErrorExample = tslib_1.__decorate([
        Component({
            selector: 'select-hint-error-example',
            templateUrl: 'select-hint-error-example.html',
            styleUrls: ['select-hint-error-example.css'],
        })
    ], SelectHintErrorExample);
    return SelectHintErrorExample;
}());
export { SelectHintErrorExample };
//# sourceMappingURL=select-hint-error-example.js.map