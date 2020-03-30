import * as tslib_1 from "tslib";
import { Component, ContentChildren, Input, QueryList, ViewChild } from '@angular/core';
import { MatColumnDef, MatHeaderRowDef, MatRowDef, MatSort, MatTable, MatTableDataSource } from '@angular/material';
import { DataSource } from '@angular/cdk/collections';
var ELEMENT_DATA = [
    { position: 1, name: 'Hydrogen', weight: 1.0079, symbol: 'H' },
    { position: 2, name: 'Helium', weight: 4.0026, symbol: 'He' },
    { position: 3, name: 'Lithium', weight: 6.941, symbol: 'Li' },
    { position: 4, name: 'Beryllium', weight: 9.0122, symbol: 'Be' },
    { position: 5, name: 'Boron', weight: 10.811, symbol: 'B' },
    { position: 6, name: 'Carbon', weight: 12.0107, symbol: 'C' },
    { position: 7, name: 'Nitrogen', weight: 14.0067, symbol: 'N' },
    { position: 8, name: 'Oxygen', weight: 15.9994, symbol: 'O' },
    { position: 9, name: 'Fluorine', weight: 18.9984, symbol: 'F' },
    { position: 10, name: 'Neon', weight: 20.1797, symbol: 'Ne' },
];
/**
 * @title Table example that shows how to wrap a table component for definition and behavior reuse.
 */
var TableWrappedExample = /** @class */ (function () {
    function TableWrappedExample() {
        this.displayedColumns = ['position', 'name', 'weight', 'symbol'];
        this.dataSource = new MatTableDataSource(ELEMENT_DATA);
    }
    TableWrappedExample.prototype.ngOnInit = function () {
        this.dataSource.sort = this.sort;
    };
    tslib_1.__decorate([
        ViewChild('sort'),
        tslib_1.__metadata("design:type", MatSort)
    ], TableWrappedExample.prototype, "sort", void 0);
    TableWrappedExample = tslib_1.__decorate([
        Component({
            selector: 'table-wrapped-example',
            styleUrls: ['table-wrapped-example.css'],
            templateUrl: 'table-wrapped-example.html',
        })
    ], TableWrappedExample);
    return TableWrappedExample;
}());
export { TableWrappedExample };
/**
 * Table component that accepts column and row definitions in its content to be registered to the
 * table.
 */
var WrapperTable = /** @class */ (function () {
    function WrapperTable() {
    }
    WrapperTable.prototype.ngAfterContentInit = function () {
        var _this = this;
        this.columnDefs.forEach(function (columnDef) { return _this.table.addColumnDef(columnDef); });
        this.rowDefs.forEach(function (rowDef) { return _this.table.addRowDef(rowDef); });
        this.headerRowDefs.forEach(function (headerRowDef) { return _this.table.addHeaderRowDef(headerRowDef); });
    };
    tslib_1.__decorate([
        ContentChildren(MatHeaderRowDef),
        tslib_1.__metadata("design:type", QueryList)
    ], WrapperTable.prototype, "headerRowDefs", void 0);
    tslib_1.__decorate([
        ContentChildren(MatRowDef),
        tslib_1.__metadata("design:type", QueryList)
    ], WrapperTable.prototype, "rowDefs", void 0);
    tslib_1.__decorate([
        ContentChildren(MatColumnDef),
        tslib_1.__metadata("design:type", QueryList)
    ], WrapperTable.prototype, "columnDefs", void 0);
    tslib_1.__decorate([
        ViewChild(MatTable),
        tslib_1.__metadata("design:type", MatTable)
    ], WrapperTable.prototype, "table", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Array)
    ], WrapperTable.prototype, "columns", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", DataSource)
    ], WrapperTable.prototype, "dataSource", void 0);
    WrapperTable = tslib_1.__decorate([
        Component({
            selector: 'wrapper-table',
            templateUrl: 'wrapper-table.html',
            styles: ["\n    table {\n      width: 100%;\n    }\n  "]
        })
    ], WrapperTable);
    return WrapperTable;
}());
export { WrapperTable };
//# sourceMappingURL=table-wrapped-example.js.map