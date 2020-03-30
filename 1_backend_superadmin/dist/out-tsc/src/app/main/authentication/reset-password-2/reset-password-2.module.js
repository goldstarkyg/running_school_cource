import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { ResetPassword2Component } from 'app/main/authentication/reset-password-2/reset-password-2.component';
var routes = [
    {
        path: 'auth/reset-password-2',
        component: ResetPassword2Component
    }
];
var ResetPassword2Module = /** @class */ (function () {
    function ResetPassword2Module() {
    }
    ResetPassword2Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                ResetPassword2Component
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
    ], ResetPassword2Module);
    return ResetPassword2Module;
}());
export { ResetPassword2Module };
//# sourceMappingURL=reset-password-2.module.js.map