import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Table with a sticky footer
 */
var TableStickyFooterExample = /** @class */ (function () {
    function TableStickyFooterExample() {
        this.displayedColumns = ['item', 'cost'];
        this.transactions = [
            { item: 'Beach ball', cost: 4 },
            { item: 'Towel', cost: 5 },
            { item: 'Frisbee', cost: 2 },
            { item: 'Sunscreen', cost: 4 },
            { item: 'Cooler', cost: 25 },
            { item: 'Swim suit', cost: 15 },
        ];
    }
    /** Gets the total cost of all transactions. */
    TableStickyFooterExample.prototype.getTotalCost = function () {
        return this.transactions.map(function (t) { return t.cost; }).reduce(function (acc, value) { return acc + value; }, 0);
    };
    TableStickyFooterExample = tslib_1.__decorate([
        Component({
            selector: 'table-sticky-footer-example',
            styleUrls: ['table-sticky-footer-example.css'],
            templateUrl: 'table-sticky-footer-example.html',
        })
    ], TableStickyFooterExample);
    return TableStickyFooterExample;
}());
export { TableStickyFooterExample };
//# sourceMappingURL=table-sticky-footer-example.js.map