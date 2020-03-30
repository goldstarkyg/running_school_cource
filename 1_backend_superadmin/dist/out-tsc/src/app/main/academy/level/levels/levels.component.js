import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { MatDialog } from '@angular/material';
import { fuseAnimations } from '@fuse/animations';
import { AcademyCoursesService } from 'app/main/academy/courses.service';
import { LevelsLevelFormDialogComponent } from 'app/main/academy/level/level-form/level-form.component';
var AcademyLevelsComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {AcademyCoursesService} _academyCoursesService
     *  @param {MatDialog} _matDialog
     */
    function AcademyLevelsComponent(_academyCoursesService, _matDialog) {
        this._academyCoursesService = _academyCoursesService;
        this._matDialog = _matDialog;
        // Set the defaults
        this.currentCategory = 'all';
        this.searchTerm = '';
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    AcademyLevelsComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to categories
        this._academyCoursesService.onCategoriesChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (categories) {
            _this.categories = categories;
        });
        // Subscribe to courses
        this._academyCoursesService.onLevelsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (courses) {
            _this.filteredCourses = _this.coursesFilteredByCategory = _this.courses = courses;
        });
    };
    /**
     * On destroy
     */
    AcademyLevelsComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Filter courses by category
     */
    AcademyLevelsComponent.prototype.filterCoursesByCategory = function () {
        var _this = this;
        // Filter
        if (this.currentCategory === 'all') {
            this.coursesFilteredByCategory = this.courses;
            this.filteredCourses = this.courses;
        }
        else {
            this.coursesFilteredByCategory = this.courses.filter(function (course) {
                return course.category === _this.currentCategory;
            });
            this.filteredCourses = this.coursesFilteredByCategory.slice();
        }
        // Re-filter by search term
        this.filterCoursesByTerm();
    };
    /**
     * Filter courses by term
     */
    AcademyLevelsComponent.prototype.filterCoursesByTerm = function () {
        var searchTerm = this.searchTerm.toLowerCase();
        // Search
        if (searchTerm === '') {
            this.filteredCourses = this.coursesFilteredByCategory;
        }
        else {
            this.filteredCourses = this.coursesFilteredByCategory.filter(function (course) {
                return course.title.toLowerCase().includes(searchTerm);
            });
        }
    };
    /**
     * New course
     */
    AcademyLevelsComponent.prototype.newLevel = function () {
        this.dialogRef = this._matDialog.open(LevelsLevelFormDialogComponent, {
            panelClass: 'contact-form-dialog',
            data: {
                action: 'new'
            }
        });
        this.dialogRef.afterClosed()
            .subscribe(function (response) {
            if (!response) {
                return;
            }
            //this._contactsService.updateContact(response.getRawValue());
        });
    };
    AcademyLevelsComponent = tslib_1.__decorate([
        Component({
            selector: 'academy-levels',
            templateUrl: './levels.component.html',
            styleUrls: ['./levels.component.scss'],
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [AcademyCoursesService,
            MatDialog])
    ], AcademyLevelsComponent);
    return AcademyLevelsComponent;
}());
export { AcademyLevelsComponent };
//# sourceMappingURL=levels.component.js.map