import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatIconModule, MatProgressBarModule } from '@angular/material';
import { FuseProgressBarComponent } from './progress-bar.component';
var FuseProgressBarModule = /** @class */ (function () {
    function FuseProgressBarModule() {
    }
    FuseProgressBarModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseProgressBarComponent
            ],
            imports: [
                CommonModule,
                RouterModule,
                MatButtonModule,
                MatIconModule,
                MatProgressBarModule
            ],
            exports: [
                FuseProgressBarComponent
            ]
        })
    ], FuseProgressBarModule);
    return FuseProgressBarModule;
}());
export { FuseProgressBarModule };
//# sourceMappingURL=progress-bar.module.js.map