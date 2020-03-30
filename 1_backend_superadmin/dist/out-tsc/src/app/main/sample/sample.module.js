import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { TranslateModule } from '@ngx-translate/core';
import { FuseSharedModule } from '@fuse/shared.module';
import { SampleComponent } from './sample.component';
var routes = [
    {
        path: 'sample',
        component: SampleComponent
    }
];
var SampleModule = /** @class */ (function () {
    function SampleModule() {
    }
    SampleModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                SampleComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                TranslateModule,
                FuseSharedModule
            ],
            exports: [
                SampleComponent
            ]
        })
    ], SampleModule);
    return SampleModule;
}());
export { SampleModule };
//# sourceMappingURL=sample.module.js.map