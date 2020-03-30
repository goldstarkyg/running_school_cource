import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatCheckboxModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { Register2Component } from 'app/main/authentication/register-2/register-2.component';
var routes = [
    {
        path: 'auth/register-2',
        component: Register2Component
    }
];
var Register2Module = /** @class */ (function () {
    function Register2Module() {
    }
    Register2Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                Register2Component
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
    ], Register2Module);
    return Register2Module;
}());
export { Register2Module };
//# sourceMappingURL=register-2.module.js.map