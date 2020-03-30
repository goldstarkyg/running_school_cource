import * as tslib_1 from "tslib";
import { Component, Inject, ViewEncapsulation } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';
import { Level } from 'app/main/academy/level/level.model';
var LevelsLevelFormDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<LevelsLevelFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    function LevelsLevelFormDialogComponent(matDialogRef, _data, _formBuilder) {
        this.matDialogRef = matDialogRef;
        this._data = _data;
        this._formBuilder = _formBuilder;
        // Set the defaults
        this.action = _data.action;
        if (this.action === 'edit') {
            this.dialogTitle = 'Edit Level';
            this.level = _data.course;
        }
        else {
            this.dialogTitle = 'New Level';
            this.level = new Level({});
        }
        this.courseForm = this.createLevelForm();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create level form
     *
     * @returns {FormGroup}
     */
    LevelsLevelFormDialogComponent.prototype.createLevelForm = function () {
        return this._formBuilder.group({
            id: [this.level.id],
            name: [this.level.name],
            lastName: [this.level.lastName],
            avatar: [this.level.avatar],
            nickname: [this.level.nickname],
            company: [this.level.company],
            jobTitle: [this.level.jobTitle],
            email: [this.level.email],
            phone: [this.level.phone],
            address: [this.level.address],
            birthday: [this.level.birthday],
            notes: [this.level.notes]
        });
    };
    LevelsLevelFormDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'levels-level-form-dialog',
            templateUrl: './level-form.component.html',
            styleUrls: ['./level-form.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__param(1, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef, Object, FormBuilder])
    ], LevelsLevelFormDialogComponent);
    return LevelsLevelFormDialogComponent;
}());
export { LevelsLevelFormDialogComponent };
//# sourceMappingURL=level-form.component.js.map