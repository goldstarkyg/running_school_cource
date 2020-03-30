import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { Location } from '@angular/common';
import { ActivatedRoute } from '@angular/router';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { MailService } from 'app/main/mail/mail.service';
var MailListComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ActivatedRoute} _activatedRoute
     * @param {MailService} _mailService
     * @param {Location} _location
     */
    function MailListComponent(_activatedRoute, _mailService, _location) {
        this._activatedRoute = _activatedRoute;
        this._mailService = _mailService;
        this._location = _location;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    MailListComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to update mails on changes
        this._mailService.onMailsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (mails) {
            _this.mails = mails;
        });
        // Subscribe to update current mail on changes
        this._mailService.onCurrentMailChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (currentMail) {
            if (!currentMail) {
                // Set the current mail id to null to deselect the current mail
                _this.currentMail = null;
                // Handle the location changes
                var labelHandle = _this._activatedRoute.snapshot.params.labelHandle, filterHandle = _this._activatedRoute.snapshot.params.filterHandle, folderHandle = _this._activatedRoute.snapshot.params.folderHandle;
                if (labelHandle) {
                    _this._location.go('apps/mail/label/' + labelHandle);
                }
                else if (filterHandle) {
                    _this._location.go('apps/mail/filter/' + filterHandle);
                }
                else {
                    _this._location.go('apps/mail/' + folderHandle);
                }
            }
            else {
                _this.currentMail = currentMail;
            }
        });
    };
    /**
     * On destroy
     */
    MailListComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Read mail
     *
     * @param mailId
     */
    MailListComponent.prototype.readMail = function (mailId) {
        var labelHandle = this._activatedRoute.snapshot.params.labelHandle, filterHandle = this._activatedRoute.snapshot.params.filterHandle, folderHandle = this._activatedRoute.snapshot.params.folderHandle;
        if (labelHandle) {
            this._location.go('apps/mail/label/' + labelHandle + '/' + mailId);
        }
        else if (filterHandle) {
            this._location.go('apps/mail/filter/' + filterHandle + '/' + mailId);
        }
        else {
            this._location.go('apps/mail/' + folderHandle + '/' + mailId);
        }
        // Set current mail
        this._mailService.setCurrentMail(mailId);
    };
    MailListComponent = tslib_1.__decorate([
        Component({
            selector: 'mail-list',
            templateUrl: './mail-list.component.html',
            styleUrls: ['./mail-list.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute,
            MailService,
            Location])
    ], MailListComponent);
    return MailListComponent;
}());
export { MailListComponent };
//# sourceMappingURL=mail-list.component.js.map