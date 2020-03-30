import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Footer row table
 */
var TableFooterRowExample = /** @class */ (function () {
    function TableFooterRowExample() {
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
    TableFooterRowExample.prototype.getTotalCost = function () {
        return this.transactions.map(function (t) { return t.cost; }).reduce(function (acc, value) { return acc + value; }, 0);
    };
    TableFooterRowExample = tslib_1.__decorate([
        Component({
            selector: 'table-footer-row-example',
            styleUrls: ['table-footer-row-example.css'],
            templateUrl: 'table-footer-row-example.html',
        })
    ], TableFooterRowExample);
    return TableFooterRowExample;
}());
export { TableFooterRowExample };
//# sourceMappingURL=table-footer-row-example.js.map