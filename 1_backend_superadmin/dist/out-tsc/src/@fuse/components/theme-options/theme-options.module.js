import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { FlexLayoutModule } from '@angular/flex-layout';
import { MatButtonModule, MatCheckboxModule, MatDividerModule, MatFormFieldModule, MatIconModule, MatOptionModule, MatRadioModule, MatSelectModule, MatSlideToggleModule } from '@angular/material';
import { FuseDirectivesModule } from '@fuse/directives/directives';
import { FuseMaterialColorPickerModule } from '@fuse/components/material-color-picker/material-color-picker.module';
import { FuseSidebarModule } from '@fuse/components/sidebar/sidebar.module';
import { FuseThemeOptionsComponent } from '@fuse/components/theme-options/theme-options.component';
var FuseThemeOptionsModule = /** @class */ (function () {
    function FuseThemeOptionsModule() {
    }
    FuseThemeOptionsModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseThemeOptionsComponent
            ],
            imports: [
                CommonModule,
                FormsModule,
                ReactiveFormsModule,
                FlexLayoutModule,
                MatButtonModule,
                MatCheckboxModule,
                MatDividerModule,
                MatFormFieldModule,
                MatIconModule,
                MatOptionModule,
                MatRadioModule,
                MatSelectModule,
                MatSlideToggleModule,
                FuseDirectivesModule,
                FuseMaterialColorPickerModule,
                FuseSidebarModule
            ],
            exports: [
                FuseThemeOptionsComponent
            ]
        })
    ], FuseThemeOptionsModule);
    return FuseThemeOptionsModule;
}());
export { FuseThemeOptionsModule };
//# sourceMappingURL=theme-options.module.js.map