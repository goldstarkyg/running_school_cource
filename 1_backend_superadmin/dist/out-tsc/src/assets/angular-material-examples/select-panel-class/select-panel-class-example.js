import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { FormControl } from '@angular/forms';
/**
 * @title Select with custom panel styling
 */
var SelectPanelClassExample = /** @class */ (function () {
    function SelectPanelClassExample() {
        this.panelColor = new FormControl('red');
    }
    SelectPanelClassExample = tslib_1.__decorate([
        Component({
            selector: 'select-panel-class-example',
            templateUrl: 'select-panel-class-example.html',
            styleUrls: ['select-panel-class-example.css'],
            // Encapsulation has to be disabled in order for the
            // component style to apply to the select panel.
            encapsulation: ViewEncapsulation.None,
        })
    ], SelectPanelClassExample);
    return SelectPanelClassExample;
}());
export { SelectPanelClassExample };
//# sourceMappingURL=select-panel-class-example.js.map