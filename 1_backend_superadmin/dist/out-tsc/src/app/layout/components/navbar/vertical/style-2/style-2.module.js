import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { MatButtonModule, MatIconModule } from '@angular/material';
import { TranslateModule } from '@ngx-translate/core';
import { FuseNavigationModule } from '@fuse/components';
import { FuseSharedModule } from '@fuse/shared.module';
import { NavbarVerticalStyle2Component } from 'app/layout/components/navbar/vertical/style-2/style-2.component';
var NavbarVerticalStyle2Module = /** @class */ (function () {
    function NavbarVerticalStyle2Module() {
    }
    NavbarVerticalStyle2Module = tslib_1.__decorate([
        NgModule({
            declarations: [
                NavbarVerticalStyle2Component
            ],
            imports: [
                MatButtonModule,
                MatIconModule,
                TranslateModule,
                FuseSharedModule,
                FuseNavigationModule
            ],
            exports: [
                NavbarVerticalStyle2Component
            ]
        })
    ], NavbarVerticalStyle2Module);
    return NavbarVerticalStyle2Module;
}());
export { NavbarVerticalStyle2Module };
//# sourceMappingURL=style-2.module.js.map