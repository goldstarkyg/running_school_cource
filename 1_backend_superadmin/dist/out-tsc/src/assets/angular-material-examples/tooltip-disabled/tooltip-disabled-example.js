import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/**
 * @title Tooltip that can be disabled
 */
var TooltipDisabledExample = /** @class */ (function () {
    function TooltipDisabledExample() {
        this.disabled = new FormControl(false);
    }
    TooltipDisabledExample = tslib_1.__decorate([
        Component({
            selector: 'tooltip-disabled-example',
            templateUrl: 'tooltip-disabled-example.html',
            styleUrls: ['tooltip-disabled-example.css'],
        })
    ], TooltipDisabledExample);
    return TooltipDisabledExample;
}());
export { TooltipDisabledExample };
//# sourceMappingURL=tooltip-disabled-example.js.map