import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatDividerModule, MatListModule } from '@angular/material';
import { FuseDemoContentComponent } from './demo-content/demo-content.component';
import { FuseDemoSidebarComponent } from './demo-sidebar/demo-sidebar.component';
var FuseDemoModule = /** @class */ (function () {
    function FuseDemoModule() {
    }
    FuseDemoModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseDemoContentComponent,
                FuseDemoSidebarComponent
            ],
            imports: [
                RouterModule,
                MatDividerModule,
                MatListModule
            ],
            exports: [
                FuseDemoContentComponent,
                FuseDemoSidebarComponent
            ]
        })
    ], FuseDemoModule);
    return FuseDemoModule;
}());
export { FuseDemoModule };
//# sourceMappingURL=demo.module.js.map