import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { ForgotPasswordComponent } from 'app/main/authentication/forgot-password/forgot-password.component';
var routes = [
    {
        path: 'auth/forgot-password',
        component: ForgotPasswordComponent
    }
];
var ForgotPasswordModule = /** @class */ (function () {
    function ForgotPasswordModule() {
    }
    ForgotPasswordModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                ForgotPasswordComponent
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
    ], ForgotPasswordModule);
    return ForgotPasswordModule;
}());
export { ForgotPasswordModule };
//# sourceMappingURL=forgot-password.module.js.map