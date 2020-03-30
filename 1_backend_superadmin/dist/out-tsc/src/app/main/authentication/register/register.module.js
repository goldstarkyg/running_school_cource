import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatCheckboxModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { RegisterComponent } from 'app/main/authentication/register/register.component';
var routes = [
    {
        path: 'auth/register',
        component: RegisterComponent
    }
];
var RegisterModule = /** @class */ (function () {
    function RegisterModule() {
    }
    RegisterModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                RegisterComponent
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
    ], RegisterModule);
    return RegisterModule;
}());
export { RegisterModule };
//# sourceMappingURL=register.module.js.map