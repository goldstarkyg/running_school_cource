import * as tslib_1 from "tslib";
import { Component, Input, Optional, ViewChild } from '@angular/core';
import { coerceBooleanProperty } from '@angular/cdk/coercion';
import { MatColumnDef, MatSort, MatSortHeader, MatTable, MatTableDataSource } from '@angular/material';
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
 * @title Table with a custom column component for easy column definition reuse.
 */
var TableSimpleColumnExample = /** @class */ (function () {
    function TableSimpleColumnExample() {
        this.displayedColumns = ['position', 'name', 'weight', 'symbol'];
        this.dataSource = new MatTableDataSource(ELEMENT_DATA);
        this.getWeight = function (data) { return '~' + data.weight; };
    }
    TableSimpleColumnExample.prototype.ngOnInit = function () {
        this.dataSource.sort = this.sort;
    };
    tslib_1.__decorate([
        ViewChild('sort'),
        tslib_1.__metadata("design:type", MatSort)
    ], TableSimpleColumnExample.prototype, "sort", void 0);
    TableSimpleColumnExample = tslib_1.__decorate([
        Component({
            selector: 'table-simple-column-example',
            styleUrls: ['table-simple-column-example.css'],
            templateUrl: 'table-simple-column-example.html',
        })
    ], TableSimpleColumnExample);
    return TableSimpleColumnExample;
}());
export { TableSimpleColumnExample };
/**
 * Column that shows simply shows text content for the header and row
 * cells. By default, the name of this column will be assumed to be both the header
 * text and data property used to access the data value to show in cells. To override
 * the header text, provide a label text. To override the data cell values,
 * provide a dataAccessor function that provides the string to display for each row's cell.
 *
 * Note that this component sets itself as visually hidden since it will show up in the `mat-table`
 * DOM because it is an empty element with an ng-container (nothing rendered). It should not
 * interfere with screen readers.
 */
var SimpleColumn = /** @class */ (function () {
    function SimpleColumn(table) {
        this.table = table;
        /** Alignment of the cell values. */
        this.align = 'before';
    }
    Object.defineProperty(SimpleColumn.prototype, "name", {
        /** Column name that should be used to reference this column. */
        get: function () { return this._name; },
        set: function (name) {
            this._name = name;
            this.columnDef.name = name;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(SimpleColumn.prototype, "sortable", {
        /** Whether the column is sortable */
        get: function () { return this._sortable; },
        set: function (sortable) {
            this._sortable = coerceBooleanProperty(sortable);
        },
        enumerable: true,
        configurable: true
    });
    SimpleColumn.prototype.ngOnInit = function () {
        if (this.table) {
            this.table.addColumnDef(this.columnDef);
        }
    };
    SimpleColumn.prototype.ngOnDestroy = function () {
        if (this.table) {
            this.table.removeColumnDef(this.columnDef);
        }
    };
    SimpleColumn.prototype.getData = function (data) {
        return this.dataAccessor ? this.dataAccessor(data, this.name) : data[this.name];
    };
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String),
        tslib_1.__metadata("design:paramtypes", [String])
    ], SimpleColumn.prototype, "name", null);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], SimpleColumn.prototype, "label", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Function)
    ], SimpleColumn.prototype, "dataAccessor", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String)
    ], SimpleColumn.prototype, "align", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Boolean),
        tslib_1.__metadata("design:paramtypes", [Boolean])
    ], SimpleColumn.prototype, "sortable", null);
    tslib_1.__decorate([
        ViewChild(MatColumnDef),
        tslib_1.__metadata("design:type", MatColumnDef)
    ], SimpleColumn.prototype, "columnDef", void 0);
    tslib_1.__decorate([
        ViewChild(MatSortHeader),
        tslib_1.__metadata("design:type", MatSortHeader)
    ], SimpleColumn.prototype, "sortHeader", void 0);
    SimpleColumn = tslib_1.__decorate([
        Component({
            selector: 'simple-column',
            template: "\n    <ng-container matColumnDef>\n      <th mat-header-cell *matHeaderCellDef mat-sort-header> {{label || name}} </th>\n      <td mat-cell *matCellDef=\"let data\"> {{getData(data)}}</td>\n    </ng-container>\n  ",
            host: {
                'class': 'simple-column cdk-visually-hidden',
                '[attr.ariaHidden]': 'true',
            }
        }),
        tslib_1.__param(0, Optional()),
        tslib_1.__metadata("design:paramtypes", [MatTable])
    ], SimpleColumn);
    return SimpleColumn;
}());
export { SimpleColumn };
//# sourceMappingURL=table-simple-column-example.js.map