import * as tslib_1 from "tslib";
import { Directive, ElementRef } from '@angular/core';
var FuseWidgetToggleDirective = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ElementRef} elementRef
     */
    function FuseWidgetToggleDirective(elementRef) {
        this.elementRef = elementRef;
    }
    FuseWidgetToggleDirective = tslib_1.__decorate([
        Directive({
            selector: '[fuseWidgetToggle]'
        }),
        tslib_1.__metadata("design:paramtypes", [ElementRef])
    ], FuseWidgetToggleDirective);
    return FuseWidgetToggleDirective;
}());
export { FuseWidgetToggleDirective };
//# sourceMappingURL=widget-toggle.directive.js.map