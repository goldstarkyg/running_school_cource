import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatIconModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { MailConfirmComponent } from 'app/main/authentication/mail-confirm/mail-confirm.component';
var routes = [
    {
        path: 'auth/mail-confirm',
        component: MailConfirmComponent
    }
];
var MailConfirmModule = /** @class */ (function () {
    function MailConfirmModule() {
    }
    MailConfirmModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                MailConfirmComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                MatIconModule,
                FuseSharedModule
            ]
        })
    ], MailConfirmModule);
    return MailConfirmModule;
}());
export { MailConfirmModule };
//# sourceMappingURL=mail-confirm.module.js.map