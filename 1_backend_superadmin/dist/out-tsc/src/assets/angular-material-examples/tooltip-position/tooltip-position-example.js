import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/**
 * @title Tooltip with a custom position
 */
var TooltipPositionExample = /** @class */ (function () {
    function TooltipPositionExample() {
        this.positionOptions = ['after', 'before', 'above', 'below', 'left', 'right'];
        this.position = new FormControl(this.positionOptions[0]);
    }
    TooltipPositionExample = tslib_1.__decorate([
        Component({
            selector: 'tooltip-position-example',
            templateUrl: 'tooltip-position-example.html',
            styleUrls: ['tooltip-position-example.css'],
        })
    ], TooltipPositionExample);
    return TooltipPositionExample;
}());
export { TooltipPositionExample };
//# sourceMappingURL=tooltip-position-example.js.map