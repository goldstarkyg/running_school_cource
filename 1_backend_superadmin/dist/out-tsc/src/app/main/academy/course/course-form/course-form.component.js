import * as tslib_1 from "tslib";
import { Component, Inject, ViewEncapsulation } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';
import { Course } from 'app/main/academy/course/course.model';
import { AcademyCoursesService } from 'app/main/academy/courses.service';
var CourseFormDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<CourseFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    function CourseFormDialogComponent(_academyCoursesService, matDialogRef, _data, _formBuilder) {
        this._academyCoursesService = _academyCoursesService;
        this.matDialogRef = matDialogRef;
        this._data = _data;
        this._formBuilder = _formBuilder;
        // Set the defaults
        this.action = _data.action;
        if (this.action === 'edit') {
            this.dialogTitle = 'Edit Course';
            this.course = _data.course;
        }
        else {
            this.dialogTitle = 'New Course';
            this.course = new Course({});
        }
        this.courseForm = this.createCourseForm();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create contact form
     *
     * @returns {FormGroup}
     */
    CourseFormDialogComponent.prototype.createCourseForm = function () {
        return this._formBuilder.group({
            id: [this.course.id],
            course_name: [this.course.course_name],
            course_content: [this.course.course_content],
            course_pic: [this.course_content_file],
            to_date: [this.course.to_date],
            from_date: [this.course.from_date],
            status: [this.course.status],
        });
    };
    CourseFormDialogComponent.prototype.previewCourse = function (files) {
        var _this = this;
        if (files.length === 0) {
            this.imgCourseURL = '';
            return;
        }
        var mimeType = files[0].type;
        if (mimeType.match(/image\/*/) == null) {
            this.message = "Only images are supported.";
            return;
        }
        this.course_content_file = files[0];
        this._academyCoursesService.course_file = this.course_content_file;
        var reader = new FileReader();
        this.imagePath = files;
        reader.readAsDataURL(files[0]);
        reader.onload = function (_event) {
            _this.imgCourseURL = reader.result;
        };
    };
    CourseFormDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'course-form-dialog',
            templateUrl: './course-form.component.html',
            styleUrls: ['./course-form.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__param(2, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [AcademyCoursesService,
            MatDialogRef, Object, FormBuilder])
    ], CourseFormDialogComponent);
    return CourseFormDialogComponent;
}());
export { CourseFormDialogComponent };
//# sourceMappingURL=course-form.component.js.map