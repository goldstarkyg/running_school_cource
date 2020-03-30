import * as tslib_1 from "tslib";
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, ViewEncapsulation, isDevMode } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { Location } from '@angular/common';
import { MatSnackBar } from '@angular/material';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { Router } from '@angular/router';
import { fuseAnimations } from '@fuse/animations';
import { PersonalTrainer } from './personaltrainer.model';
import { PersonalTrainerService } from './personaltrainer.service';
import { GlobalService } from '../../../services/global.service';
import { TrainerFormDialogComponent } from 'app/main/trainers/trainer-form/trainer-form.component';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { MatDialog } from '@angular/material/dialog';
var PersonalTrainerComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {PersonalTrainerService} _PersonalTrainerService
     * @param {FormBuilder} _formBuilder
     * @param {Location} _location
     * @param {MatSnackBar} _matSnackBar
     */
    function PersonalTrainerComponent(_PersonalTrainerService, _formBuilder, _location, _matSnackBar, globalVars, router, _matDialog) {
        this._PersonalTrainerService = _PersonalTrainerService;
        this._formBuilder = _formBuilder;
        this._location = _location;
        this._matSnackBar = _matSnackBar;
        this.globalVars = globalVars;
        this.router = router;
        this._matDialog = _matDialog;
        // urlHeader = 'http://localhost';
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        this.nTrainerNumber = globalVars.g_nTrainerID;
        this.displayMode = this.globalVars.g_nDisplyTrainerMode;
        // Set the default
        // this.personaltrainer = new PersonalTrainer();
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    /**
     * On init
     */
    PersonalTrainerComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to update techmanager on changes
        this._PersonalTrainerService.onTrainerChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (personaltrainer) {
            if (personaltrainer) {
                _this.personaltrainer = new PersonalTrainer(personaltrainer);
                _this.pageType = 'edit';
            }
            _this.schoolForm = _this.createschoolForm();
        });
        this.form = this._formBuilder.group({
            first_name: [''],
            last_name: [''],
            gender: [''],
            nationality: [''],
            email: [''],
            birthday: [''],
            birthplace: [''],
            mobile: [''],
            state: [''],
            region: [''],
            province: [''],
            city: [''],
            postalCode: [''],
            group: [''],
            vat_number: [''],
            card_number: [''],
            certified_type: [''],
            fiscalCode: [''],
            membership: [''],
            bio: [''],
        });
    };
    /**
     * On destroy
     */
    PersonalTrainerComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create techmanager form
     *
     * @returns {FormGroup}
     */
    PersonalTrainerComponent.prototype.createschoolForm = function () {
        return this._formBuilder.group({
            id: [this.personaltrainer.personal.id],
        });
    };
    PersonalTrainerComponent.prototype.acceptTrainer = function () {
        this.dialogRef = this._matDialog.open(TrainerFormDialogComponent, {
            panelClass: 'contact-form-dialog',
            data: {
                action: '1',
                personal_id: this.personaltrainer.personal.id
            }
        });
    };
    PersonalTrainerComponent.prototype.rejectTrainer = function () {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to reject?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                _this._PersonalTrainerService.rejectPersonal(_this.personaltrainer.personal.id).subscribe(function (data) { }, function (error) { });
                var url = '/apps/trainer/trainers/2';
                _this.router.navigate([url]);
            }
            _this.confirmDialogRef = null;
        });
    };
    PersonalTrainerComponent.prototype.goback = function () {
        var url = '/apps/trainer/trainers/' + this.globalVars.g_nDisplyTrainerMode;
        if (this.globalVars.g_nDisplyTrainerMode == 0)
            url = '/apps/trainer/pending-trainers';
        this.router.navigate([url]);
    };
    PersonalTrainerComponent = tslib_1.__decorate([
        Component({
            selector: 'personaltrainer',
            templateUrl: './personaltrainer.component.html',
            styleUrls: ['./personaltrainer.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [PersonalTrainerService,
            FormBuilder,
            Location,
            MatSnackBar,
            GlobalService,
            Router,
            MatDialog])
    ], PersonalTrainerComponent);
    return PersonalTrainerComponent;
}());
export { PersonalTrainerComponent };
//# sourceMappingURL=personaltrainer.component.js.map