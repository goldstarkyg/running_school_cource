import * as tslib_1 from "tslib";
import { ChangeDetectorRef, Component, HostBinding, Input } from '@angular/core';
import { merge, Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { FuseNavigationService } from '@fuse/components/navigation/navigation.service';
var FuseNavVerticalGroupComponent = /** @class */ (function () {
    /**
     * Constructor
     */
    /**
     *
     * @param {ChangeDetectorRef} _changeDetectorRef
     * @param {FuseNavigationService} _fuseNavigationService
     */
    function FuseNavVerticalGroupComponent(_changeDetectorRef, _fuseNavigationService) {
        this._changeDetectorRef = _changeDetectorRef;
        this._fuseNavigationService = _fuseNavigationService;
        this.classes = 'nav-group nav-item';
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    FuseNavVerticalGroupComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to navigation item
        merge(this._fuseNavigationService.onNavigationItemAdded, this._fuseNavigationService.onNavigationItemUpdated, this._fuseNavigationService.onNavigationItemRemoved).pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            // Mark for check
            _this._changeDetectorRef.markForCheck();
        });
    };
    /**
     * On destroy
     */
    FuseNavVerticalGroupComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    tslib_1.__decorate([
        HostBinding('class'),
        tslib_1.__metadata("design:type", Object)
    ], FuseNavVerticalGroupComponent.prototype, "classes", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], FuseNavVerticalGroupComponent.prototype, "item", void 0);
    FuseNavVerticalGroupComponent = tslib_1.__decorate([
        Component({
            selector: 'fuse-nav-vertical-group',
            templateUrl: './group.component.html',
            styleUrls: ['./group.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ChangeDetectorRef,
            FuseNavigationService])
    ], FuseNavVerticalGroupComponent);
    return FuseNavVerticalGroupComponent;
}());
export { FuseNavVerticalGroupComponent };
//# sourceMappingURL=group.component.js.map