import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatCheckboxModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { Login2Component } from 'app/main/authentication/login-2/login-2.component';
var routes = [
    {
        path: 'auth/login-2',
        component: Login2Component
    }
];
var Login2Module = /** @class */ (function () {
    function Login2Module() {
    }
    Login2Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                Login2Component
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatCheckboxModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                FuseSharedModule
            ]
        })
    ], Login2Module);
    return Login2Module;
}());
export { Login2Module };
//# sourceMappingURL=login-2.module.js.map