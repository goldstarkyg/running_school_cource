import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Configurable paginator
 */
var PaginatorConfigurableExample = /** @class */ (function () {
    function PaginatorConfigurableExample() {
        // MatPaginator Inputs
        this.length = 100;
        this.pageSize = 10;
        this.pageSizeOptions = [5, 10, 25, 100];
    }
    PaginatorConfigurableExample.prototype.setPageSizeOptions = function (setPageSizeOptionsInput) {
        this.pageSizeOptions = setPageSizeOptionsInput.split(',').map(function (str) { return +str; });
    };
    PaginatorConfigurableExample = tslib_1.__decorate([
        Component({
            selector: 'paginator-configurable-example',
            templateUrl: 'paginator-configurable-example.html',
            styleUrls: ['paginator-configurable-example.css'],
        })
    ], PaginatorConfigurableExample);
    return PaginatorConfigurableExample;
}());
export { PaginatorConfigurableExample };
//# sourceMappingURL=paginator-configurable-example.js.map