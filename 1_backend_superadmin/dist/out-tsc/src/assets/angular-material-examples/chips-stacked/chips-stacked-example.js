import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Stacked chips
 */
var ChipsStackedExample = /** @class */ (function () {
    function ChipsStackedExample() {
        this.availableColors = [
            { name: 'none', color: undefined },
            { name: 'Primary', color: 'primary' },
            { name: 'Accent', color: 'accent' },
            { name: 'Warn', color: 'warn' }
        ];
    }
    ChipsStackedExample = tslib_1.__decorate([
        Component({
            selector: 'chips-stacked-example',
            templateUrl: 'chips-stacked-example.html',
            styleUrls: ['chips-stacked-example.css'],
        })
    ], ChipsStackedExample);
    return ChipsStackedExample;
}());
export { ChipsStackedExample };
//# sourceMappingURL=chips-stacked-example.js.map