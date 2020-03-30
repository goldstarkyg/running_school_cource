import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { ResetPasswordComponent } from 'app/main/authentication/reset-password/reset-password.component';
var routes = [
    {
        path: 'auth/reset-password',
        component: ResetPasswordComponent
    }
];
var ResetPasswordModule = /** @class */ (function () {
    function ResetPasswordModule() {
    }
    ResetPasswordModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                ResetPasswordComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                FuseSharedModule
            ]
        })
    ], ResetPasswordModule);
    return ResetPasswordModule;
}());
export { ResetPasswordModule };
//# sourceMappingURL=reset-password.module.js.map