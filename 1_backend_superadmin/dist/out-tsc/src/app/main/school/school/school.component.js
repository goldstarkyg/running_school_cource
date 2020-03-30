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
import { SchoolData } from './school.model';
import { SchoolService } from './school.service';
import { GlobalService } from '../../../services/global.service';
import { NgxSpinnerService } from 'ngx-spinner';
var SchoolComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {SchoolService} _SchoolService
     * @param {FormBuilder} _formBuilder
     * @param {Location} _location
     * @param {MatSnackBar} _matSnackBar
     */
    function SchoolComponent(spinner, _SchoolService, _formBuilder, _location, _matSnackBar, globalVars, router) {
        this.spinner = spinner;
        this._SchoolService = _SchoolService;
        this._formBuilder = _formBuilder;
        this._location = _location;
        this._matSnackBar = _matSnackBar;
        this.globalVars = globalVars;
        this.router = router;
        // urlHeader = 'http://localhost';
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        this.displayMode = globalVars.g_nDisplySchoolMode;
        // Set the default
        // this.school = new SchoolData();
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    SchoolComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to update school on changes
        this._SchoolService.onSchoolChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (retData) {
            if (retData) {
                _this.schoolData = new SchoolData(retData);
                _this.school = _this.schoolData.school;
                _this.school_manager = _this.schoolData.school_manager;
                _this.pageType = 'edit';
                _this.globalVars.g_nDisplySchoolMode = _this.schoolData.school.status;
                _this.displayMode = _this.globalVars.g_nDisplySchoolMode;
            }
            _this.schoolForm = _this.createschoolForm();
        });
        this.form = this._formBuilder.group({
            name: [''],
            asd: [''],
            company: [''],
            school_state: [''],
            school_region: [''],
            school_province: [''],
            school_city: [''],
            school_address: [''],
            school_postalCode: [''],
            school_membership: [''],
            first_name: [''],
            last_name: [''],
            gender: [''],
            email: [''],
            birthday: [''],
            mobile: [''],
            state: [''],
            region: [''],
            province: [''],
            city: [''],
            postalCode: [''],
            group: [''],
            vat_number: [''],
            fiscalCode: [''],
            membership: [''],
            bio: [''],
        });
    };
    /**
     * On destroy
     */
    SchoolComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create school form
     *
     * @returns {FormGroup}
     */
    SchoolComponent.prototype.createschoolForm = function () {
        return this._formBuilder.group({
            id: [this.schoolData.school.id],
            logourl: [this.schoolData.school.logo_path],
            imageurl: [this.schoolData.school.banner_path],
            address: [this.schoolData.school.address],
            schoolname: [this.schoolData.school.name],
            firstname: [this.schoolData.school_manager.first_name],
            lastname: [this.schoolData.school_manager.last_name],
            email: [this.schoolData.school_manager.email],
            phone: [this.schoolData.school_manager.mobile_phone],
            status: [this.schoolData.school.status],
            create: [this.schoolData.school.created_at]
        });
    };
    /**
     * Save school
     */
    SchoolComponent.prototype.viewTechnicalManager = function () {
        var url = '/apps/school/techmanager/' + this.globalVars.g_nSchoolID;
        this.router.navigate([url]);
    };
    SchoolComponent.prototype.goBackToSchool = function () {
        var url = '/apps/school/schools/' + this.globalVars.g_nDisplySchoolMode;
        this.router.navigate([url]);
    };
    SchoolComponent = tslib_1.__decorate([
        Component({
            selector: 'school',
            templateUrl: './school.component.html',
            styleUrls: ['./school.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [NgxSpinnerService,
            SchoolService,
            FormBuilder,
            Location,
            MatSnackBar,
            GlobalService,
            Router])
    ], SchoolComponent);
    return SchoolComponent;
}());
export { SchoolComponent };
//# sourceMappingURL=school.component.js.map