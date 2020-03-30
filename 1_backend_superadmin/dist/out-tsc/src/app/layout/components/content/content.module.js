import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { FuseSharedModule } from '@fuse/shared.module';
import { ContentComponent } from 'app/layout/components/content/content.component';
var ContentModule = /** @class */ (function () {
    function ContentModule() {
    }
    ContentModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                ContentComponent
            ],
            imports: [
                RouterModule,
                FuseSharedModule
            ],
            exports: [
                ContentComponent
            ]
        })
    ], ContentModule);
    return ContentModule;
}());
export { ContentModule };
//# sourceMappingURL=content.module.js.map