import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { FormControl } from '@angular/forms';
import { MatDialog } from '@angular/material';
import { Subject } from 'rxjs';
import { debounceTime, distinctUntilChanged, takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FuseSidebarService } from '@fuse/components/sidebar/sidebar.service';
import { TrainersService } from 'app/main/trainers/trainers.service';
// import { TrainerFormDialogComponent } from 'app/main/trainers/trainer-form/trainer-form.component';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
var TrainersComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {TrainersService} _trainersService
     * @param {FuseSidebarService} _fuseSidebarService
     * @param {MatDialog} _matDialog
     * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
     */
    function TrainersComponent(_trainersService, _fuseSidebarService, _matDialog, _fuseTranslationLoaderService) {
        this._trainersService = _trainersService;
        this._fuseSidebarService = _fuseSidebarService;
        this._matDialog = _matDialog;
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        // Set the defaults
        this.searchInput = new FormControl('');
        // Set the private defaults
        this._unsubscribeAll = new Subject();
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    TrainersComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._trainersService.onSelectedTrainersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedContacts) {
            _this.hasSelectedTrainers = selectedContacts.length > 0;
        });
        this.searchInput.valueChanges
            .pipe(takeUntil(this._unsubscribeAll), debounceTime(300), distinctUntilChanged())
            .subscribe(function (searchText) {
            _this._trainersService.onSearchTextChanged.next(searchText);
        });
    };
    /**
     * On destroy
     */
    TrainersComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * New contact
     */
    // newContact(): void {
    //     this.dialogRef = this._matDialog.open(TrainerFormDialogComponent, {
    //         panelClass: 'contact-form-dialog',
    //         data: {
    //             action: 'new'
    //         }
    //     });
    //     this.dialogRef.afterClosed()
    //         .subscribe((response: FormGroup) => {
    //             if (!response) {
    //                 return;
    //             }
    //             this._trainersService.updateContact(response.getRawValue());
    //         });
    // }
    /**
     * Toggle the sidebar
     *
     * @param name
     */
    TrainersComponent.prototype.toggleSidebar = function (name) {
        this._fuseSidebarService.getSidebar(name).toggleOpen();
    };
    TrainersComponent = tslib_1.__decorate([
        Component({
            selector: 'trainers',
            templateUrl: './trainers.component.html',
            styleUrls: ['./trainers.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [TrainersService,
            FuseSidebarService,
            MatDialog,
            FuseTranslationLoaderService])
    ], TrainersComponent);
    return TrainersComponent;
}());
export { TrainersComponent };
//# sourceMappingURL=trainers.component.js.map