import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatIconModule, MatToolbarModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { FooterComponent } from 'app/layout/components/footer/footer.component';
var FooterModule = /** @class */ (function () {
    function FooterModule() {
    }
    FooterModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FooterComponent
            ],
            imports: [
                RouterModule,
                MatButtonModule,
                MatIconModule,
                MatToolbarModule,
                FuseSharedModule
            ],
            exports: [
                FooterComponent
            ]
        })
    ], FooterModule);
    return FooterModule;
}());
export { FooterModule };
//# sourceMappingURL=footer.module.js.map