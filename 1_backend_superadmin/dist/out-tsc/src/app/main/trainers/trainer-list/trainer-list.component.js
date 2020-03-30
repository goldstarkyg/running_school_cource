import * as tslib_1 from "tslib";
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, TemplateRef, ViewChild, ViewEncapsulation, isDevMode } from '@angular/core';
import { MatDialog } from '@angular/material';
import { DataSource } from '@angular/cdk/collections';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { TrainersService } from 'app/main/trainers/trainers.service';
// import { TrainerFormDialogComponent } from 'app/main/trainers/trainer-form/trainer-form.component';
var TrainersTrainerListComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ContactsService} _contactsService
     * @param {MatDialog} _matDialog
     */
    function TrainersTrainerListComponent(_trainersService, _matDialog) {
        this._trainersService = _trainersService;
        this._matDialog = _matDialog;
        // urlHeader = 'http://localhost';
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        this.displayedColumns = ['checkbox', 'avatar', 'name', 'school', 'role', 'email', 'phone', 'comment', 'buttons'];
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    TrainersTrainerListComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.dataSource = new FilesDataSource(this._trainersService);
        this._trainersService.onTrainersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (trainers) {
            _this.trainers = trainers;
            _this.checkboxes = {};
            trainers.map(function (contact) {
                _this.checkboxes[contact.id] = false;
            });
        });
        this._trainersService.onSelectedTrainersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedContacts) {
            for (var id in _this.checkboxes) {
                if (!_this.checkboxes.hasOwnProperty(id)) {
                    continue;
                }
                _this.checkboxes[id] = selectedContacts.includes(id);
            }
            _this.selectedContacts = selectedContacts;
        });
        this._trainersService.onUserDataChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (user) {
            _this.user = user;
        });
        this._trainersService.onFilterChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            _this._trainersService.deselectContacts();
        });
    };
    /**
     * On destroy
     */
    TrainersTrainerListComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    // /**
    //  * Edit contact
    //  *
    //  * @param contact
    //  */
    // editContact(contact): void
    // {
    //     this.dialogRef = this._matDialog.open(TrainersTrainerFormDialogComponent, {
    //         panelClass: 'contact-form-dialog',
    //         data      : {
    //             contact: contact,
    //             action : 'edit'
    //         }
    //     });
    //     this.dialogRef.afterClosed()
    //         .subscribe(response => {
    //             if ( !response )
    //             {
    //                 return;
    //             }
    //             const actionType: string = response[0];
    //             const formData: FormGroup = response[1];
    //             switch ( actionType )
    //             {
    //                 /**
    //                  * Save
    //                  */
    //                 case 'save':
    //                     this._trainersService.updateContact(formData.getRawValue());
    //                     break;
    //                 /**
    //                  * Delete
    //                  */
    //                 case 'delete':
    //                     this.deleteContact(contact);
    //                     break;
    //             }
    //         });
    // }
    // /**
    //  * Delete Contact
    //  */
    TrainersTrainerListComponent.prototype.deleteTrainer = function (contact) {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to delete?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                _this._trainersService.deleteContact(contact);
            }
            _this.confirmDialogRef = null;
        });
    };
    // /**
    //  * On selected change
    //  *
    //  * @param contactId
    //  */
    TrainersTrainerListComponent.prototype.onSelectedChange = function (contactId) {
        this._trainersService.toggleSelectedContact(contactId);
    };
    tslib_1.__decorate([
        ViewChild('dialogContent'),
        tslib_1.__metadata("design:type", TemplateRef)
    ], TrainersTrainerListComponent.prototype, "dialogContent", void 0);
    TrainersTrainerListComponent = tslib_1.__decorate([
        Component({
            selector: 'trainers-trainer-list',
            templateUrl: './trainer-list.component.html',
            styleUrls: ['./trainer-list.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [TrainersService,
            MatDialog])
    ], TrainersTrainerListComponent);
    return TrainersTrainerListComponent;
}());
export { TrainersTrainerListComponent };
var FilesDataSource = /** @class */ (function (_super) {
    tslib_1.__extends(FilesDataSource, _super);
    /**
     * Constructor
     *
     * @param {ContactsService} _trainersService
     */
    function FilesDataSource(_trainersService) {
        var _this = _super.call(this) || this;
        _this._trainersService = _trainersService;
        return _this;
    }
    /**
     * Connect function called by the table to retrieve one stream containing the data to render.
     * @returns {Observable<any[]>}
     */
    FilesDataSource.prototype.connect = function () {
        return this._trainersService.onTrainersChanged;
    };
    /**
     * Disconnect
     */
    FilesDataSource.prototype.disconnect = function () {
    };
    return FilesDataSource;
}(DataSource));
export { FilesDataSource };
//# sourceMappingURL=trainer-list.component.js.map