import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/**
 * @title Tooltip that demonstrates auto-hiding when it clips out of its scrolling container.
 */
var TooltipAutoHideExample = /** @class */ (function () {
    function TooltipAutoHideExample() {
        this.positionOptions = ['below', 'above', 'left', 'right'];
        this.position = new FormControl(this.positionOptions[0]);
    }
    TooltipAutoHideExample = tslib_1.__decorate([
        Component({
            selector: 'tooltip-auto-hide-example',
            templateUrl: 'tooltip-auto-hide-example.html',
            styleUrls: ['tooltip-auto-hide-example.css'],
        })
    ], TooltipAutoHideExample);
    return TooltipAutoHideExample;
}());
export { TooltipAutoHideExample };
//# sourceMappingURL=tooltip-auto-hide-example.js.map