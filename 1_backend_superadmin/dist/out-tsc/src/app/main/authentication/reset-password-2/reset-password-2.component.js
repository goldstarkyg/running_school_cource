import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/internal/operators';
import { FuseConfigService } from '@fuse/services/config.service';
import { fuseAnimations } from '@fuse/animations';
var ResetPassword2Component = /** @class */ (function () {
    function ResetPassword2Component(_fuseConfigService, _formBuilder) {
        this._fuseConfigService = _fuseConfigService;
        this._formBuilder = _formBuilder;
        // Configure the layout
        this._fuseConfigService.config = {
            layout: {
                navbar: {
                    hidden: true
                },
                toolbar: {
                    hidden: true
                },
                footer: {
                    hidden: true
                },
                sidepanel: {
                    hidden: true
                }
            }
        };
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    ResetPassword2Component.prototype.ngOnInit = function () {
        var _this = this;
        this.resetPasswordForm = this._formBuilder.group({
            name: ['', Validators.required],
            email: ['', [Validators.required, Validators.email]],
            password: ['', Validators.required],
            passwordConfirm: ['', [Validators.required, confirmPasswordValidator]]
        });
        // Update the validity of the 'passwordConfirm' field
        // when the 'password' field changes
        this.resetPasswordForm.get('password').valueChanges
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function () {
            _this.resetPasswordForm.get('passwordConfirm').updateValueAndValidity();
        });
    };
    /**
     * On destroy
     */
    ResetPassword2Component.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    ResetPassword2Component = tslib_1.__decorate([
        Component({
            selector: 'reset-password-2',
            templateUrl: './reset-password-2.component.html',
            styleUrls: ['./reset-password-2.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [FuseConfigService,
            FormBuilder])
    ], ResetPassword2Component);
    return ResetPassword2Component;
}());
export { ResetPassword2Component };
/**
 * Confirm password validator
 *
 * @param {AbstractControl} control
 * @returns {ValidationErrors | null}
 */
export var confirmPasswordValidator = function (control) {
    if (!control.parent || !control) {
        return null;
    }
    var password = control.parent.get('password');
    var passwordConfirm = control.parent.get('passwordConfirm');
    if (!password || !passwordConfirm) {
        return null;
    }
    if (passwordConfirm.value === '') {
        return null;
    }
    if (password.value === passwordConfirm.value) {
        return null;
    }
    return { 'passwordsNotMatching': true };
};
//# sourceMappingURL=reset-password-2.component.js.map