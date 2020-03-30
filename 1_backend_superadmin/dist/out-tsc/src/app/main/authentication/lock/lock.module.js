import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatFormFieldModule, MatIconModule, MatInputModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { LockComponent } from 'app/main/authentication/lock/lock.component';
var routes = [
    {
        path: 'auth/lock',
        component: LockComponent
    }
];
var LockModule = /** @class */ (function () {
    function LockModule() {
    }
    LockModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                LockComponent
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
    ], LockModule);
    return LockModule;
}());
export { LockModule };
//# sourceMappingURL=lock.module.js.map