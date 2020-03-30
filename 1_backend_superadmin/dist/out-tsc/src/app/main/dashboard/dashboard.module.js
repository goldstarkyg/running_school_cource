import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { TranslateModule } from '@ngx-translate/core';
import { FuseSharedModule } from '@fuse/shared.module';
import { DashboardComponent } from './dashboard.component';
var routes = [
    {
        path: 'dashboard',
        component: DashboardComponent
    }
];
var DashboardModule = /** @class */ (function () {
    function DashboardModule() {
    }
    DashboardModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                DashboardComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                TranslateModule,
                FuseSharedModule
            ],
            exports: [
                DashboardComponent
            ]
        })
    ], DashboardModule);
    return DashboardModule;
}());
export { DashboardModule };
//# sourceMappingURL=dashboard.module.js.map