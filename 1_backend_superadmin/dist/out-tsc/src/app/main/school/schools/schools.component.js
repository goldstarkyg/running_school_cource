import * as tslib_1 from "tslib";
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, ElementRef, ViewChild, ViewEncapsulation, isDevMode } from '@angular/core';
import { MatPaginator, MatSort } from '@angular/material';
import { DataSource } from '@angular/cdk/collections';
import { BehaviorSubject, fromEvent, merge, Subject } from 'rxjs';
import { debounceTime, distinctUntilChanged, map } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FuseUtils } from '@fuse/utils';
import { SchoolListService } from './schools.service';
import { takeUntil } from 'rxjs/internal/operators';
import { GlobalService } from '../../../services/global.service';
var SchoolListComponent = /** @class */ (function () {
    function SchoolListComponent(_SchoolListService, globalVars) {
        this._SchoolListService = _SchoolListService;
        this.globalVars = globalVars;
        this.displayedColumns = ['ID', 'LOGO', 'SCHOOL_NAME', 'ADDRESS', 'EMAIL', 'CREATE'];
        // urlHeader = 'http://localhost';
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        this.displayMode = globalVars.g_nDisplySchoolMode;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    SchoolListComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.dataSource = new FilesDataSource(this._SchoolListService, this.paginator, this.sort);
        fromEvent(this.filter.nativeElement, 'keyup')
            .pipe(takeUntil(this._unsubscribeAll), debounceTime(150), distinctUntilChanged())
            .subscribe(function () {
            if (!_this.dataSource) {
                return;
            }
            _this.dataSource.filter = _this.filter.nativeElement.value;
        });
    };
    tslib_1.__decorate([
        ViewChild(MatPaginator),
        tslib_1.__metadata("design:type", MatPaginator)
    ], SchoolListComponent.prototype, "paginator", void 0);
    tslib_1.__decorate([
        ViewChild(MatSort),
        tslib_1.__metadata("design:type", MatSort)
    ], SchoolListComponent.prototype, "sort", void 0);
    tslib_1.__decorate([
        ViewChild('filter'),
        tslib_1.__metadata("design:type", ElementRef)
    ], SchoolListComponent.prototype, "filter", void 0);
    SchoolListComponent = tslib_1.__decorate([
        Component({
            selector: 'school-lists',
            templateUrl: './schools.component.html',
            styleUrls: ['./schools.component.scss'],
            animations: fuseAnimations,
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__metadata("design:paramtypes", [SchoolListService,
            GlobalService])
    ], SchoolListComponent);
    return SchoolListComponent;
}());
export { SchoolListComponent };
var FilesDataSource = /** @class */ (function (_super) {
    tslib_1.__extends(FilesDataSource, _super);
    /**
     * Constructor
     *
     * @param {SchoolListService} _SchoolListService
     * @param {MatPaginator} _matPaginator
     * @param {MatSort} _matSort
     */
    function FilesDataSource(_SchoolListService, _matPaginator, _matSort) {
        var _this = _super.call(this) || this;
        _this._SchoolListService = _SchoolListService;
        _this._matPaginator = _matPaginator;
        _this._matSort = _matSort;
        _this._filterChange = new BehaviorSubject('');
        _this._filteredDataChange = new BehaviorSubject('');
        _this.filteredData = _this._SchoolListService.schools;
        return _this;
    }
    /**
     * Connect function called by the table to retrieve one stream containing the data to render.
     *
     * @returns {Observable<any[]>}
     */
    FilesDataSource.prototype.connect = function () {
        var _this = this;
        var displayDataChanges = [
            this._SchoolListService.onSchoolsChanged,
            this._matPaginator.page,
            this._filterChange,
            this._matSort.sortChange
        ];
        return merge.apply(void 0, displayDataChanges).pipe(map(function () {
            var data = _this._SchoolListService.schools.slice();
            data = _this.filterData(data);
            _this.filteredData = data.slice();
            data = _this.sortData(data);
            // Grab the page's slice of data.
            var startIndex = _this._matPaginator.pageIndex * _this._matPaginator.pageSize;
            data = data.splice(startIndex, _this._matPaginator.pageSize);
            // return data.splice(startIndex, this._matPaginator.pageSize);
            return data;
        }));
    };
    Object.defineProperty(FilesDataSource.prototype, "filteredData", {
        // -----------------------------------------------------------------------------------------------------
        // @ Accessors
        // -----------------------------------------------------------------------------------------------------
        // Filtered data
        get: function () {
            return this._filteredDataChange.value;
        },
        set: function (value) {
            this._filteredDataChange.next(value);
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(FilesDataSource.prototype, "filter", {
        // Filter
        get: function () {
            return this._filterChange.value;
        },
        set: function (filter) {
            this._filterChange.next(filter);
        },
        enumerable: true,
        configurable: true
    });
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Filter data
     *
     * @param data
     * @returns {any}
     */
    FilesDataSource.prototype.filterData = function (data) {
        if (!this.filter) {
            return data;
        }
        return FuseUtils.filterArrayByString(data, this.filter);
    };
    /**
     * Sort data
     *
     * @param data
     * @returns {any[]}
     */
    FilesDataSource.prototype.sortData = function (data) {
        var _this = this;
        if (!this._matSort.active || this._matSort.direction === '') {
            return data;
        }
        return data.sort(function (a, b) {
            var _a, _b, _c, _d, _e, _f;
            var propertyA = '';
            var propertyB = '';
            switch (_this._matSort.active) {
                case 'id':
                    _a = [a.id, b.id], propertyA = _a[0], propertyB = _a[1];
                    break;
                case 'name':
                    _b = [a.name, b.name], propertyA = _b[0], propertyB = _b[1];
                    break;
                case 'categories':
                    _c = [a.categories[0], b.categories[0]], propertyA = _c[0], propertyB = _c[1];
                    break;
                case 'price':
                    _d = [a.priceTaxIncl, b.priceTaxIncl], propertyA = _d[0], propertyB = _d[1];
                    break;
                case 'quantity':
                    _e = [a.quantity, b.quantity], propertyA = _e[0], propertyB = _e[1];
                    break;
                case 'active':
                    _f = [a.active, b.active], propertyA = _f[0], propertyB = _f[1];
                    break;
            }
            var valueA = isNaN(+propertyA) ? propertyA : +propertyA;
            var valueB = isNaN(+propertyB) ? propertyB : +propertyB;
            return (valueA < valueB ? -1 : 1) * (_this._matSort.direction === 'asc' ? 1 : -1);
        });
    };
    /**
     * Disconnect
     */
    FilesDataSource.prototype.disconnect = function () {
    };
    return FilesDataSource;
}(DataSource));
export { FilesDataSource };
//# sourceMappingURL=schools.component.js.map