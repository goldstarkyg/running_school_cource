import * as tslib_1 from "tslib";
import { Component, Inject, ViewEncapsulation } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';
import { Lesson } from 'app/main/academy/lesson/lesson.model';
var LessonsLessonFormDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<ContactsContactFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    function LessonsLessonFormDialogComponent(matDialogRef, _data, _formBuilder) {
        this.matDialogRef = matDialogRef;
        this._data = _data;
        this._formBuilder = _formBuilder;
        // Set the defaults
        this.action = _data.action;
        if (this.action === 'edit') {
            this.dialogTitle = 'Edit Lesson';
            this.lesson = _data.lesson;
        }
        else {
            this.dialogTitle = 'New Lesson';
            this.lesson = new Lesson({});
        }
        this.lessonForm = this.createLessonForm();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create contact form
     *
     * @returns {FormGroup}
     */
    LessonsLessonFormDialogComponent.prototype.createLessonForm = function () {
        return this._formBuilder.group({
            id: [this.lesson.id],
            name: [this.lesson.name],
            lastName: [this.lesson.lastName],
            avatar: [this.lesson.avatar],
            nickname: [this.lesson.nickname],
            company: [this.lesson.company],
            jobTitle: [this.lesson.jobTitle],
            email: [this.lesson.email],
            phone: [this.lesson.phone],
            address: [this.lesson.address],
            birthday: [this.lesson.birthday],
            notes: [this.lesson.notes]
        });
    };
    LessonsLessonFormDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'lessons-lesson-form-dialog',
            templateUrl: './lesson-form.component.html',
            styleUrls: ['./lesson-form.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__param(1, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef, Object, FormBuilder])
    ], LessonsLessonFormDialogComponent);
    return LessonsLessonFormDialogComponent;
}());
export { LessonsLessonFormDialogComponent };
//# sourceMappingURL=lesson-form.component.js.map