import * as tslib_1 from "tslib";
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, Inject, ViewEncapsulation, isDevMode } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { MAT_DIALOG_DATA } from '@angular/material';
//import { Course } from 'app/main/academy/course/course.model';
import { SchoolListService } from 'app/main/school/schools/schools.service';
import { PersonalTrainerService } from 'app/main/trainers/personaltrainer/personaltrainer.service';
import { LoadingComponent } from '../../common/loading/loading.component';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
var TrainerFormDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<TrainerFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    function TrainerFormDialogComponent(_data, dialog, matDialogRef, _formBuilder, _schoolService, _personalService, router) {
        this._data = _data;
        this.dialog = dialog;
        this.matDialogRef = matDialogRef;
        this._formBuilder = _formBuilder;
        this._schoolService = _schoolService;
        this._personalService = _personalService;
        this.router = router;
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        this.school_list = [];
        this.mode = {};
        // Set the defaults
        this.dialogTitle = 'Please choose a school';
        this.courseForm = this.createCourseForm();
        this.mode = _data['action'];
        this.trainer_id = _data['personal_id'];
    }
    TrainerFormDialogComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._schoolService.getSchoolNames().subscribe(function (data) {
            _this.school_list = data;
        }, function (error) { });
    };
    TrainerFormDialogComponent.prototype.showSpinner = function () {
        this.spinnerDlg = this.dialog.open(LoadingComponent, { panelClass: 'transparent', disableClose: true });
    };
    TrainerFormDialogComponent.prototype.hideSpinner = function () {
        this.spinnerDlg.close();
    };
    /**
     * Create contact form
     *
     * @returns {FormGroup}
     */
    TrainerFormDialogComponent.prototype.createCourseForm = function () {
        return this._formBuilder.group({
            schoolList: [this.school_id],
        });
    };
    // var url = '/apps/trainer/trainers/2';
    // this.router.navigate([url]);
    TrainerFormDialogComponent.prototype.onApprove = function () {
        var _this = this;
        this.showSpinner();
        this._personalService.approvePersonal(this.trainer_id, this.school_id).subscribe(function (data) {
            _this.hideSpinner();
            _this.matDialogRef.close(_this.courseForm);
            var url = '/apps/trainer/trainers/1';
            _this.router.navigate([url]);
        }, function (error) {
            _this.hideSpinner();
            _this.matDialogRef.close(_this.courseForm);
        });
    };
    TrainerFormDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'trainer-form-dialog',
            templateUrl: './trainer-form.component.html',
            styleUrls: ['./trainer-form.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__param(0, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [Object, MatDialog,
            MatDialogRef,
            FormBuilder,
            SchoolListService,
            PersonalTrainerService,
            Router])
    ], TrainerFormDialogComponent);
    return TrainerFormDialogComponent;
}());
export { TrainerFormDialogComponent };
//# sourceMappingURL=trainer-form.component.js.map