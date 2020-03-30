import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { MatButtonModule, MatIconModule } from '@angular/material';
import { TranslateModule } from '@ngx-translate/core';
import { FuseNavigationModule } from '@fuse/components';
import { FuseSharedModule } from '@fuse/shared.module';
import { NavbarVerticalStyle1Component } from 'app/layout/components/navbar/vertical/style-1/style-1.component';
var NavbarVerticalStyle1Module = /** @class */ (function () {
    function NavbarVerticalStyle1Module() {
    }
    NavbarVerticalStyle1Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                NavbarVerticalStyle1Component
            ],
            imports: [
                MatButtonModule,
                MatIconModule,
                TranslateModule,
                FuseSharedModule,
                FuseNavigationModule
            ],
            exports: [
                NavbarVerticalStyle1Component
            ]
        })
    ], NavbarVerticalStyle1Module);
    return NavbarVerticalStyle1Module;
}());
export { NavbarVerticalStyle1Module };
//# sourceMappingURL=style-1.module.js.map