import * as tslib_1 from "tslib";
import { COMMA, ENTER } from '@angular/cdk/keycodes';
import { Component, ElementRef, ViewChild } from '@angular/core';
import { FormControl } from '@angular/forms';
import { MatAutocomplete } from '@angular/material';
import { map, startWith } from 'rxjs/operators';
/**
 * @title Chips Autocomplete
 */
var ChipsAutocompleteExample = /** @class */ (function () {
    function ChipsAutocompleteExample() {
        var _this = this;
        this.visible = true;
        this.selectable = true;
        this.removable = true;
        this.addOnBlur = true;
        this.separatorKeysCodes = [ENTER, COMMA];
        this.fruitCtrl = new FormControl();
        this.fruits = ['Lemon'];
        this.allFruits = ['Apple', 'Lemon', 'Lime', 'Orange', 'Strawberry'];
        this.filteredFruits = this.fruitCtrl.valueChanges.pipe(startWith(null), map(function (fruit) { return fruit ? _this._filter(fruit) : _this.allFruits.slice(); }));
    }
    ChipsAutocompleteExample.prototype.add = function (event) {
        // Add fruit only when MatAutocomplete is not open
        // To make sure this does not conflict with OptionSelected Event
        if (!this.matAutocomplete.isOpen) {
            var input = event.input;
            var value = event.value;
            // Add our fruit
            if ((value || '').trim()) {
                this.fruits.push(value.trim());
            }
            // Reset the input value
            if (input) {
                input.value = '';
            }
            this.fruitCtrl.setValue(null);
        }
    };
    ChipsAutocompleteExample.prototype.remove = function (fruit) {
        var index = this.fruits.indexOf(fruit);
        if (index >= 0) {
            this.fruits.splice(index, 1);
        }
    };
    ChipsAutocompleteExample.prototype.selected = function (event) {
        this.fruits.push(event.option.viewValue);
        this.fruitInput.nativeElement.value = '';
        this.fruitCtrl.setValue(null);
    };
    ChipsAutocompleteExample.prototype._filter = function (value) {
        var filterValue = value.toLowerCase();
        return this.allFruits.filter(function (fruit) { return fruit.toLowerCase().indexOf(filterValue) === 0; });
    };
    tslib_1.__decorate([
        ViewChild('fruitInput'),
        tslib_1.__metadata("design:type", ElementRef)
    ], ChipsAutocompleteExample.prototype, "fruitInput", void 0);
    tslib_1.__decorate([
        ViewChild('auto'),
        tslib_1.__metadata("design:type", MatAutocomplete)
    ], ChipsAutocompleteExample.prototype, "matAutocomplete", void 0);
    ChipsAutocompleteExample = tslib_1.__decorate([
        Component({
            selector: 'chips-autocomplete-example',
            templateUrl: 'chips-autocomplete-example.html',
            styleUrls: ['chips-autocomplete-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], ChipsAutocompleteExample);
    return ChipsAutocompleteExample;
}());
export { ChipsAutocompleteExample };
//# sourceMappingURL=chips-autocomplete-example.js.map