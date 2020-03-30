import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatIconModule } from '@angular/material';
import { FuseSearchBarComponent } from './search-bar.component';
var FuseSearchBarModule = /** @class */ (function () {
    function FuseSearchBarModule() {
    }
    FuseSearchBarModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseSearchBarComponent
            ],
            imports: [
                CommonModule,
                RouterModule,
                MatButtonModule,
                MatIconModule
            ],
            exports: [
                FuseSearchBarComponent
            ]
        })
    ], FuseSearchBarModule);
    return FuseSearchBarModule;
}());
export { FuseSearchBarModule };
//# sourceMappingURL=search-bar.module.js.map