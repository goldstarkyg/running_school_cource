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
import { SchoolData } from '../school/school.model';
import { SchoolService } from '../school/school.service';
import { SchoolListService } from '../schools/schools.service';
import { GlobalService } from '../../../services/global.service';
import { MatDialog } from '@angular/material/dialog';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
var TechnManagerComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {SchoolService} _SchoolService
     * @param {FormBuilder} _formBuilder
     * @param {Location} _location
     * @param {MatSnackBar} _matSnackBar
     */
    function TechnManagerComponent(_SchoolService, _SchoolListService, _formBuilder, _location, _matSnackBar, globalVars, router, _matDialog) {
        this._SchoolService = _SchoolService;
        this._SchoolListService = _SchoolListService;
        this._formBuilder = _formBuilder;
        this._location = _location;
        this._matSnackBar = _matSnackBar;
        this.globalVars = globalVars;
        this.router = router;
        this._matDialog = _matDialog;
        // urlHeader = 'http://localhost';
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        this.displayMode = globalVars.g_nDisplySchoolMode;
        this.nSchoolNumber = globalVars.g_nSchoolID;
        // Set the default
        // this.schoolData = new SchoolData();
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    TechnManagerComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to update techmanager on changes
        this._SchoolService.onSchoolChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (data) {
            if (data) {
                _this._schoolData = new SchoolData(data);
                _this.techmanager = _this._schoolData.technical_person;
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
    TechnManagerComponent.prototype.ngOnDestroy = function () {
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
    TechnManagerComponent.prototype.createschoolForm = function () {
        return this._formBuilder.group({
            id: [this._schoolData.technical_person],
        });
    };
    TechnManagerComponent.prototype.viewSchoolManager = function () {
        var url = '/apps/school/school/' + this.globalVars.g_nSchoolID;
        this.router.navigate([url]);
    };
    TechnManagerComponent.prototype.gobackToSchool = function () {
        var url = '/apps/school/schools/' + this.globalVars.g_nDisplySchoolMode;
        this.router.navigate([url]);
    };
    TechnManagerComponent.prototype.updateSchool = function (status) {
        this._SchoolService.updateSchool(status).subscribe(function (data) { }, function (error) { });
    };
    TechnManagerComponent.prototype.updateTechnicalManager = function (user_id, status) {
        this._SchoolService.updateTechnicalManager(user_id, status).subscribe(function (data) { }, function (error) { });
    };
    TechnManagerComponent.prototype.takeAction = function (mode) {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to accept?';
        if (mode == 2)
            this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to reject?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                _this.updateSchool(mode);
                if (mode == 1) // accpet
                    _this.updateTechnicalManager(_this._schoolData.technical_person.id, 1);
                else if (mode == 2) // reject
                    _this.updateTechnicalManager(_this._schoolData.technical_person.id, 0);
                _this._SchoolListService.reloadSchools(mode);
                var url = '/apps/school/schools/' + mode;
                _this.router.navigate([url]);
            }
            _this.confirmDialogRef = null;
        });
    };
    TechnManagerComponent.prototype.acceptSchool = function () {
        this.takeAction(1);
    };
    TechnManagerComponent.prototype.rejectSchool = function () {
        this.takeAction(2);
    };
    TechnManagerComponent = tslib_1.__decorate([
        Component({
            selector: 'technmanager',
            templateUrl: './techmanager.component.html',
            styleUrls: ['./techmanager.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [SchoolService,
            SchoolListService,
            FormBuilder,
            Location,
            MatSnackBar,
            GlobalService,
            Router,
            MatDialog])
    ], TechnManagerComponent);
    return TechnManagerComponent;
}());
export { TechnManagerComponent };
//# sourceMappingURL=techmanager.component.js.map