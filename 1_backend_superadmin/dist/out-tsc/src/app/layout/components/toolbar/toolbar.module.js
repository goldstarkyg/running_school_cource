import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatIconModule, MatMenuModule, MatToolbarModule } from '@angular/material';
import { FuseSearchBarModule, FuseShortcutsModule } from '@fuse/components';
import { FuseSharedModule } from '@fuse/shared.module';
import { ToolbarComponent } from 'app/layout/components/toolbar/toolbar.component';
var ToolbarModule = /** @class */ (function () {
    function ToolbarModule() {
    }
    ToolbarModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                ToolbarComponent
            ],
            imports: [
                RouterModule,
                MatButtonModule,
                MatIconModule,
                MatMenuModule,
                MatToolbarModule,
                FuseSharedModule,
                FuseSearchBarModule,
                FuseShortcutsModule
            ],
            exports: [
                ToolbarComponent
            ]
        })
    ], ToolbarModule);
    return ToolbarModule;
}());
export { ToolbarModule };
//# sourceMappingURL=toolbar.module.js.map