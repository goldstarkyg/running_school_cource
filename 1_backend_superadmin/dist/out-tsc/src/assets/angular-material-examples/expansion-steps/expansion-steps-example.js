import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Expansion panel as accordion
 */
var ExpansionStepsExample = /** @class */ (function () {
    function ExpansionStepsExample() {
        this.step = 0;
    }
    ExpansionStepsExample.prototype.setStep = function (index) {
        this.step = index;
    };
    ExpansionStepsExample.prototype.nextStep = function () {
        this.step++;
    };
    ExpansionStepsExample.prototype.prevStep = function () {
        this.step--;
    };
    ExpansionStepsExample = tslib_1.__decorate([
        Component({
            selector: 'expansion-steps-example',
            templateUrl: 'expansion-steps-example.html',
            styleUrls: ['expansion-steps-example.css'],
        })
    ], ExpansionStepsExample);
    return ExpansionStepsExample;
}());
export { ExpansionStepsExample };
//# sourceMappingURL=expansion-steps-example.js.map