import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { MatButtonModule, MatIconModule } from '@angular/material';
import { FuseNavigationModule } from '@fuse/components';
import { FuseSharedModule } from '@fuse/shared.module';
import { NavbarHorizontalStyle1Component } from 'app/layout/components/navbar/horizontal/style-1/style-1.component';
var NavbarHorizontalStyle1Module = /** @class */ (function () {
    function NavbarHorizontalStyle1Module() {
    }
    NavbarHorizontalStyle1Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                NavbarHorizontalStyle1Component
            ],
            imports: [
                MatButtonModule,
                MatIconModule,
                FuseSharedModule,
                FuseNavigationModule
            ],
            exports: [
                NavbarHorizontalStyle1Component
            ]
        })
    ], NavbarHorizontalStyle1Module);
    return NavbarHorizontalStyle1Module;
}());
export { NavbarHorizontalStyle1Module };
//# sourceMappingURL=style-1.module.js.map