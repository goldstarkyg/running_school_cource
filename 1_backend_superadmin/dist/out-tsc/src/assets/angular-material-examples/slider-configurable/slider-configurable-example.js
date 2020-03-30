import * as tslib_1 from "tslib";
import { coerceNumberProperty } from '@angular/cdk/coercion';
import { Component } from '@angular/core';
/**
 * @title Configurable slider
 */
var SliderConfigurableExample = /** @class */ (function () {
    function SliderConfigurableExample() {
        this.autoTicks = false;
        this.disabled = false;
        this.invert = false;
        this.max = 100;
        this.min = 0;
        this.showTicks = false;
        this.step = 1;
        this.thumbLabel = false;
        this.value = 0;
        this.vertical = false;
        this._tickInterval = 1;
    }
    Object.defineProperty(SliderConfigurableExample.prototype, "tickInterval", {
        get: function () {
            return this.showTicks ? (this.autoTicks ? 'auto' : this._tickInterval) : 0;
        },
        set: function (value) {
            this._tickInterval = coerceNumberProperty(value);
        },
        enumerable: true,
        configurable: true
    });
    SliderConfigurableExample = tslib_1.__decorate([
        Component({
            selector: 'slider-configurable-example',
            templateUrl: 'slider-configurable-example.html',
            styleUrls: ['slider-configurable-example.css'],
        })
    ], SliderConfigurableExample);
    return SliderConfigurableExample;
}());
export { SliderConfigurableExample };
//# sourceMappingURL=slider-configurable-example.js.map