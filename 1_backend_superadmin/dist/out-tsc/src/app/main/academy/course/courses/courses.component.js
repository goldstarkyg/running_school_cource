import * as tslib_1 from "tslib";
import { Component, isDevMode } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { MatDialog } from '@angular/material';
import { FormControl } from '@angular/forms';
import { fuseAnimations } from '@fuse/animations';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { AcademyCoursesService } from 'app/main/academy/courses.service';
import { CourseFormDialogComponent } from 'app/main/academy/course/course-form/course-form.component';
import { environment as env } from 'environments/environment';
import { environment as envProd } from 'environments/environment.prod';
var AcademyCoursesComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {AcademyCoursesService} _academyCoursesService
     *  @param {MatDialog} _matDialog
     */
    function AcademyCoursesComponent(_academyCoursesService, _matDialog) {
        this._academyCoursesService = _academyCoursesService;
        this._matDialog = _matDialog;
        this.stateCtrl = new FormControl();
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    AcademyCoursesComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to courses
        this._academyCoursesService.onCoursesChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (courses) {
            _this.filteredCourses = _this.coursesFilteredByCategory = _this.courses = courses;
        });
    };
    /**
     * On destroy
     */
    AcademyCoursesComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * New course
     */
    AcademyCoursesComponent.prototype.newCourse = function () {
        var _this = this;
        this.dialogRef = this._matDialog.open(CourseFormDialogComponent, {
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
            var actionType = response[0];
            var formData = response[1];
            //formData['aaa'].setValue('ss');
            switch (actionType) {
                /**
                 * Save
                 */
                case 'save':
                    //this._academyCoursesService.updateContact(formData.getRawValue());
                    break;
                case 'new':
                    console.log(formData.getRawValue());
                    var model = formData.getRawValue();
                    var f_date = model['from_date'];
                    var from_date = f_date.getFullYear() + '-' + (f_date.getMonth() + 1) + '-' + f_date.getDate();
                    model['from_date'] = from_date;
                    var t_date = model['to_date'];
                    var to_date = t_date.getFullYear() + '-' + (t_date.getMonth() + 1) + '-' + t_date.getDate();
                    model['to_date'] = to_date;
                    model['course_file'] = _this._academyCoursesService.course_file;
                    _this._academyCoursesService.addCourse(model);
                    break;
                /**
                 * Delete
                 */
                case 'delete':
                    //this.deleteContact(contact);
                    break;
            }
            //this._contactsService.updateContact(response.getRawValue());
        });
    };
    /**
     * Edit contact
     *
     * @param contact
     */
    AcademyCoursesComponent.prototype.editCourse = function (course) {
        var _this = this;
        var base_url = "" + (isDevMode() && env.baseUrl || envProd.baseUrl);
        base_url = base_url.substr(0, base_url.length - 5);
        var val = 'assets/images/courses/athlete_default.jpg';
        if (course.course_pic != '' || course.course_pic != null) {
            val = base_url + course.course_pic;
        }
        course.imgCourseURL = val;
        course.course_pic = val;
        var f_date = (course.from_date).split(" ");
        course.from_date = f_date[0];
        var t_date = (course.to_date).split(" ");
        course.from_date = t_date[0];
        this.dialogRef = this._matDialog.open(CourseFormDialogComponent, {
            panelClass: 'contact-form-dialog',
            data: {
                course: course,
                action: 'edit'
            }
        });
        this.dialogRef.afterClosed()
            .subscribe(function (response) {
            if (!response) {
                return;
            }
            var actionType = response[0];
            var formData = response[1];
            switch (actionType) {
                /**
                 * Save
                 */
                case 'save':
                    _this._academyCoursesService.updateCourse(formData.getRawValue());
                    break;
                /**
                 * Delete
                 */
                case 'delete':
                    _this.deleteCourse(course);
                    break;
            }
        });
    };
    /**
     * Delete Contact
     */
    AcademyCoursesComponent.prototype.deleteCourse = function (course) {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to delete?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                _this._academyCoursesService.deleteCourse(course);
            }
            _this.confirmDialogRef = null;
        });
    };
    //change background image
    AcademyCoursesComponent.prototype.changeImage = function (path) {
        var base_url = "" + (isDevMode() && env.baseUrl || envProd.baseUrl);
        base_url = base_url.substr(0, base_url.length - 5);
        var val = 'url(./assets/images/courses/athlete_default.jpg)';
        if (path != '' || path != null) {
            val = 'url(' + base_url + path + ')';
        }
        return val;
    };
    //view status
    AcademyCoursesComponent.prototype.viewStatus = function (status) {
        if (status == 0)
            return this.stateCtrl.disabled;
        else
            return this.stateCtrl.enabled;
    };
    //changeStatus
    AcademyCoursesComponent.prototype.changeStatus = function (course) {
        var course_id = course.id;
        var status = course.status;
        if (status == 0) {
            status = 1;
            course.status = 1;
        }
        else {
            status = 0;
            course.status = 0;
        }
        this._academyCoursesService.updateCourseStatus(course_id, status);
        return;
    };
    AcademyCoursesComponent = tslib_1.__decorate([
        Component({
            selector: 'academy-courses',
            templateUrl: './courses.component.html',
            styleUrls: ['./courses.component.scss'],
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [AcademyCoursesService,
            MatDialog])
    ], AcademyCoursesComponent);
    return AcademyCoursesComponent;
}());
export { AcademyCoursesComponent };
//# sourceMappingURL=courses.component.js.map