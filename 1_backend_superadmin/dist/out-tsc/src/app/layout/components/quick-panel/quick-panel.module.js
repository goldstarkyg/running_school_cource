import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { MatDividerModule, MatListModule, MatSlideToggleModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { QuickPanelComponent } from 'app/layout/components/quick-panel/quick-panel.component';
var QuickPanelModule = /** @class */ (function () {
    function QuickPanelModule() {
    }
    QuickPanelModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                QuickPanelComponent
            ],
            imports: [
                MatDividerModule,
                MatListModule,
                MatSlideToggleModule,
                FuseSharedModule,
            ],
            exports: [
                QuickPanelComponent
            ]
        })
    ], QuickPanelModule);
    return QuickPanelModule;
}());
export { QuickPanelModule };
//# sourceMappingURL=quick-panel.module.js.map