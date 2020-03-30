import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
import { map, startWith } from 'rxjs/operators';
/**
 * @title Highlight the first autocomplete option
 */
var AutocompleteAutoActiveFirstOptionExample = /** @class */ (function () {
    function AutocompleteAutoActiveFirstOptionExample() {
        this.myControl = new FormControl();
        this.options = ['One', 'Two', 'Three'];
    }
    AutocompleteAutoActiveFirstOptionExample.prototype.ngOnInit = function () {
        var _this = this;
        this.filteredOptions = this.myControl.valueChanges.pipe(startWith(''), map(function (value) { return _this._filter(value); }));
    };
    AutocompleteAutoActiveFirstOptionExample.prototype._filter = function (value) {
        var filterValue = value.toLowerCase();
        return this.options.filter(function (option) { return option.toLowerCase().indexOf(filterValue) === 0; });
    };
    AutocompleteAutoActiveFirstOptionExample = tslib_1.__decorate([
        Component({
            selector: 'autocomplete-auto-active-first-option-example',
            templateUrl: 'autocomplete-auto-active-first-option-example.html',
            styleUrls: ['autocomplete-auto-active-first-option-example.css'],
        })
    ], AutocompleteAutoActiveFirstOptionExample);
    return AutocompleteAutoActiveFirstOptionExample;
}());
export { AutocompleteAutoActiveFirstOptionExample };
//# sourceMappingURL=autocomplete-auto-active-first-option-example.js.map