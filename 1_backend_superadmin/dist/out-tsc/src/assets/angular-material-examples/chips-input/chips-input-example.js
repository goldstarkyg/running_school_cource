import * as tslib_1 from "tslib";
import { COMMA, ENTER } from '@angular/cdk/keycodes';
import { Component } from '@angular/core';
/**
 * @title Chips with input
 */
var ChipsInputExample = /** @class */ (function () {
    function ChipsInputExample() {
        this.visible = true;
        this.selectable = true;
        this.removable = true;
        this.addOnBlur = true;
        this.separatorKeysCodes = [ENTER, COMMA];
        this.fruits = [
            { name: 'Lemon' },
            { name: 'Lime' },
            { name: 'Apple' },
        ];
    }
    ChipsInputExample.prototype.add = function (event) {
        var input = event.input;
        var value = event.value;
        // Add our fruit
        if ((value || '').trim()) {
            this.fruits.push({ name: value.trim() });
        }
        // Reset the input value
        if (input) {
            input.value = '';
        }
    };
    ChipsInputExample.prototype.remove = function (fruit) {
        var index = this.fruits.indexOf(fruit);
        if (index >= 0) {
            this.fruits.splice(index, 1);
        }
    };
    ChipsInputExample = tslib_1.__decorate([
        Component({
            selector: 'chips-input-example',
            templateUrl: 'chips-input-example.html',
            styleUrls: ['chips-input-example.css'],
        })
    ], ChipsInputExample);
    return ChipsInputExample;
}());
export { ChipsInputExample };
//# sourceMappingURL=chips-input-example.js.map