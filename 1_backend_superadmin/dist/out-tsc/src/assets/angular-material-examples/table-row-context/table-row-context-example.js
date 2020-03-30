import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Table showing each row context properties.
 */
var TableRowContextExample = /** @class */ (function () {
    function TableRowContextExample() {
        this.displayedColumns = ['$implicit', 'index', 'count', 'first', 'last', 'even', 'odd'];
        this.data = ['one', 'two', 'three', 'four', 'five'];
    }
    TableRowContextExample = tslib_1.__decorate([
        Component({
            selector: 'table-row-context-example',
            styleUrls: ['table-row-context-example.css'],
            templateUrl: 'table-row-context-example.html',
        })
    ], TableRowContextExample);
    return TableRowContextExample;
}());
export { TableRowContextExample };
//# sourceMappingURL=table-row-context-example.js.map