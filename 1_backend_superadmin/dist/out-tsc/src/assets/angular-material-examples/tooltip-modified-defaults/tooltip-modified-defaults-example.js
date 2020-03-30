import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MAT_TOOLTIP_DEFAULT_OPTIONS } from '@angular/material';
/** Custom options the configure the tooltip's default show/hide delays. */
export var myCustomTooltipDefaults = {
    showDelay: 1000,
    hideDelay: 1000,
    touchendHideDelay: 1000,
};
/**
 * @title Tooltip with a show and hide delay
 */
var TooltipModifiedDefaultsExample = /** @class */ (function () {
    function TooltipModifiedDefaultsExample() {
    }
    TooltipModifiedDefaultsExample = tslib_1.__decorate([
        Component({
            selector: 'tooltip-modified-defaults-example',
            templateUrl: 'tooltip-modified-defaults-example.html',
            styleUrls: ['tooltip-modified-defaults-example.css'],
            providers: [
                { provide: MAT_TOOLTIP_DEFAULT_OPTIONS, useValue: myCustomTooltipDefaults }
            ],
        })
    ], TooltipModifiedDefaultsExample);
    return TooltipModifiedDefaultsExample;
}());
export { TooltipModifiedDefaultsExample };
//# sourceMappingURL=tooltip-modified-defaults-example.js.map