import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Configurable checkbox
 */
var CheckboxConfigurableExample = /** @class */ (function () {
    function CheckboxConfigurableExample() {
        this.checked = false;
        this.indeterminate = false;
        this.labelPosition = 'after';
        this.disabled = false;
    }
    CheckboxConfigurableExample = tslib_1.__decorate([
        Component({
            selector: 'checkbox-configurable-example',
            templateUrl: 'checkbox-configurable-example.html',
            styleUrls: ['checkbox-configurable-example.css'],
        })
    ], CheckboxConfigurableExample);
    return CheckboxConfigurableExample;
}());
export { CheckboxConfigurableExample };
//# sourceMappingURL=checkbox-configurable-example.js.map