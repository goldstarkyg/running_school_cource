import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/** @title Select with custom trigger text */
var SelectCustomTriggerExample = /** @class */ (function () {
    function SelectCustomTriggerExample() {
        this.toppings = new FormControl();
        this.toppingList = ['Extra cheese', 'Mushroom', 'Onion', 'Pepperoni', 'Sausage', 'Tomato'];
    }
    SelectCustomTriggerExample = tslib_1.__decorate([
        Component({
            selector: 'select-custom-trigger-example',
            templateUrl: 'select-custom-trigger-example.html',
            styleUrls: ['select-custom-trigger-example.css'],
        })
    ], SelectCustomTriggerExample);
    return SelectCustomTriggerExample;
}());
export { SelectCustomTriggerExample };
//# sourceMappingURL=select-custom-trigger-example.js.map