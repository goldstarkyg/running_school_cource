import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/**
 * @title Simple autocomplete
 */
var AutocompleteSimpleExample = /** @class */ (function () {
    function AutocompleteSimpleExample() {
        this.myControl = new FormControl();
        this.options = ['One', 'Two', 'Three'];
    }
    AutocompleteSimpleExample = tslib_1.__decorate([
        Component({
            selector: 'autocomplete-simple-example',
            templateUrl: 'autocomplete-simple-example.html',
            styleUrls: ['autocomplete-simple-example.css'],
        })
    ], AutocompleteSimpleExample);
    return AutocompleteSimpleExample;
}());
export { AutocompleteSimpleExample };
//# sourceMappingURL=autocomplete-simple-example.js.map