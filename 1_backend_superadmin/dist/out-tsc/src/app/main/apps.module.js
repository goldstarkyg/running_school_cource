import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { FuseSharedModule } from '@fuse/shared.module';
var routes = [
    {
        path: 'trainer',
        loadChildren: './trainers/trainers.module#TrainersModule'
    },
    {
        path: 'mail',
        loadChildren: './mail/mail.module#MailModule'
    },
    {
        path: 'school',
        loadChildren: './school/school.module#EcommerceModule'
    },
    {
        path: 'course',
        loadChildren: './academy/academy.module#AcademyModule'
    },
];
var AppsModule = /** @class */ (function () {
    function AppsModule() {
    }
    AppsModule = tslib_1.__decorate([
        NgModule({
            imports: [
                RouterModule.forChild(routes),
                FuseSharedModule
            ]
        })
    ], AppsModule);
    return AppsModule;
}());
export { AppsModule };
//# sourceMappingURL=apps.module.js.map