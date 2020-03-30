import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { ForgotPassword2Component } from 'app/main/authentication/forgot-password-2/forgot-password-2.component';
var routes = [
    {
        path: 'auth/forgot-password-2',
        component: ForgotPassword2Component
    }
];
var ForgotPassword2Module = /** @class */ (function () {
    function ForgotPassword2Module() {
    }
    ForgotPassword2Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                ForgotPassword2Component
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                FuseSharedModule,
            ]
        })
    ], ForgotPassword2Module);
    return ForgotPassword2Module;
}());
export { ForgotPassword2Module };
//# sourceMappingURL=forgot-password-2.module.js.map