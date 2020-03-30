import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FlexLayoutModule } from '@angular/flex-layout';
import { MatButtonModule, MatIconModule, MatMenuModule, MatTooltipModule } from '@angular/material';
import { FusePipesModule } from '@fuse/pipes/pipes.module';
import { FuseMaterialColorPickerComponent } from '@fuse/components/material-color-picker/material-color-picker.component';
var FuseMaterialColorPickerModule = /** @class */ (function () {
    function FuseMaterialColorPickerModule() {
    }
    FuseMaterialColorPickerModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseMaterialColorPickerComponent
            ],
            imports: [
                CommonModule,
                FlexLayoutModule,
                MatButtonModule,
                MatIconModule,
                MatMenuModule,
                MatTooltipModule,
                FusePipesModule
            ],
            exports: [
                FuseMaterialColorPickerComponent
            ],
        })
    ], FuseMaterialColorPickerModule);
    return FuseMaterialColorPickerModule;
}());
export { FuseMaterialColorPickerModule };
//# sourceMappingURL=material-color-picker.module.js.map