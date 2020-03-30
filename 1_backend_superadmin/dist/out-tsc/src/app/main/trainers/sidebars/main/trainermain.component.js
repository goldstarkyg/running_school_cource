import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { TrainersService } from 'app/main/trainers/trainers.service';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from '../../i18n/en';
import { locale as italian } from '../../i18n/it';
var TrainersMainSidebarComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {TrainersService} _trainersService
     */
    function TrainersMainSidebarComponent(_trainersService, _fuseTranslationLoaderService) {
        this._trainersService = _trainersService;
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
        this.arrListSchoolName = _trainersService.schoolnames;
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    TrainersMainSidebarComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.filterBy = this._trainersService.filterBy || 'all';
        this._trainersService.onUserDataChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (user) {
            _this.user = user;
        });
    };
    /**
     * On destroy
     */
    TrainersMainSidebarComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Change the filter
     *
     * @param filter
     */
    TrainersMainSidebarComponent.prototype.changeFilter = function (filter) {
        this.filterBy = filter;
        this._trainersService.onFilterChanged.next(this.filterBy);
    };
    TrainersMainSidebarComponent = tslib_1.__decorate([
        Component({
            selector: 'trainers-main-sidebar',
            templateUrl: './trainermain.component.html',
            styleUrls: ['./trainermain.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [TrainersService,
            FuseTranslationLoaderService])
    ], TrainersMainSidebarComponent);
    return TrainersMainSidebarComponent;
}());
export { TrainersMainSidebarComponent };
//# sourceMappingURL=trainermain.component.js.map