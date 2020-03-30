import * as tslib_1 from "tslib";
import { Component, ViewChild } from '@angular/core';
import { MatAccordion } from '@angular/material';
/**
 * @title Accordion with expand/collapse all toggles
 */
var ExpansionExpandCollapseAllExample = /** @class */ (function () {
    function ExpansionExpandCollapseAllExample() {
    }
    tslib_1.__decorate([
        ViewChild(MatAccordion),
        tslib_1.__metadata("design:type", MatAccordion)
    ], ExpansionExpandCollapseAllExample.prototype, "accordion", void 0);
    ExpansionExpandCollapseAllExample = tslib_1.__decorate([
        Component({
            selector: 'expansion-toggle-all-example',
            templateUrl: 'expansion-expand-collapse-all-example.html',
            styleUrls: ['expansion-expand-collapse-all-example.css'],
        })
    ], ExpansionExpandCollapseAllExample);
    return ExpansionExpandCollapseAllExample;
}());
export { ExpansionExpandCollapseAllExample };
//# sourceMappingURL=expansion-expand-collapse-all-example.js.map