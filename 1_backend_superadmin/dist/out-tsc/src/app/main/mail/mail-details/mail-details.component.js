import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { MailService } from 'app/main/mail/mail.service';
var MailDetailsComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MailService} _mailService
     */
    function MailDetailsComponent(_mailService) {
        this._mailService = _mailService;
        // Set the defaults
        this.showDetails = false;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    MailDetailsComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to update the current mail
        this._mailService.onCurrentMailChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (currentMail) {
            _this.mail = currentMail;
        });
        // Subscribe to update on label change
        this._mailService.onLabelsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (labels) {
            _this.labels = labels;
        });
    };
    /**
     * On destroy
     */
    MailDetailsComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Toggle star
     *
     * @param event
     */
    MailDetailsComponent.prototype.toggleStar = function (event) {
        event.stopPropagation();
        this.mail.toggleStar();
        this._mailService.updateMail(this.mail);
    };
    /**
     * Toggle important
     *
     * @param event
     */
    MailDetailsComponent.prototype.toggleImportant = function (event) {
        event.stopPropagation();
        this.mail.toggleImportant();
        this._mailService.updateMail(this.mail);
    };
    MailDetailsComponent = tslib_1.__decorate([
        Component({
            selector: 'mail-details',
            templateUrl: './mail-details.component.html',
            styleUrls: ['./mail-details.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [MailService])
    ], MailDetailsComponent);
    return MailDetailsComponent;
}());
export { MailDetailsComponent };
//# sourceMappingURL=mail-details.component.js.map