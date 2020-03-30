import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Basic select
 */
var SelectOverviewExample = /** @class */ (function () {
    function SelectOverviewExample() {
        this.foods = [
            { value: 'steak-0', viewValue: 'Steak' },
            { value: 'pizza-1', viewValue: 'Pizza' },
            { value: 'tacos-2', viewValue: 'Tacos' }
        ];
    }
    SelectOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'select-overview-example',
            templateUrl: 'select-overview-example.html',
            styleUrls: ['select-overview-example.css'],
        })
    ], SelectOverviewExample);
    return SelectOverviewExample;
}());
export { SelectOverviewExample };
//# sourceMappingURL=select-overview-example.js.map