import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatDialog } from '@angular/material';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { TrainersService } from 'app/main/trainers/trainers.service';
var TrainersSelectedBarComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {TrainersService} _trainersService
     * @param {MatDialog} _matDialog
     */
    function TrainersSelectedBarComponent(_trainersService, _matDialog) {
        this._trainersService = _trainersService;
        this._matDialog = _matDialog;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    TrainersSelectedBarComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._trainersService.onSelectedTrainersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedContacts) {
            _this.selectedTrainers = selectedContacts;
            setTimeout(function () {
                _this.hasSelectedTrainers = selectedContacts.length > 0;
                _this.isIndeterminate = (selectedContacts.length !== _this._trainersService.trainers.length && selectedContacts.length > 0);
            }, 0);
        });
    };
    /**
     * On destroy
     */
    TrainersSelectedBarComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Select all
     */
    TrainersSelectedBarComponent.prototype.selectAll = function () {
        this._trainersService.selectContacts();
    };
    /**
     * Deselect all
     */
    TrainersSelectedBarComponent.prototype.deselectAll = function () {
        this._trainersService.deselectContacts();
    };
    /**
     * Delete selected contacts
     */
    TrainersSelectedBarComponent.prototype.deleteSelectedContacts = function () {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to delete all selected contacts?';
        this.confirmDialogRef.afterClosed()
            .subscribe(function (result) {
            if (result) {
                _this._trainersService.deleteSelectedContacts();
            }
            _this.confirmDialogRef = null;
        });
    };
    TrainersSelectedBarComponent = tslib_1.__decorate([
        Component({
            selector: 'selected-trainerbar',
            templateUrl: './selected-trainerbar.component.html',
            styleUrls: ['./selected-trainerbar.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [TrainersService,
            MatDialog])
    ], TrainersSelectedBarComponent);
    return TrainersSelectedBarComponent;
}());
export { TrainersSelectedBarComponent };
//# sourceMappingURL=selected-trainerbar.component.js.map