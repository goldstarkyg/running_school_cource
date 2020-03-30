import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FlexLayoutModule } from '@angular/flex-layout';
import { MatButtonModule, MatDividerModule, MatFormFieldModule, MatIconModule, MatInputModule, MatListModule, MatMenuModule, MatTooltipModule } from '@angular/material';
import { CookieService } from 'ngx-cookie-service';
import { FuseShortcutsComponent } from './shortcuts.component';
var FuseShortcutsModule = /** @class */ (function () {
    function FuseShortcutsModule() {
    }
    FuseShortcutsModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseShortcutsComponent
            ],
            imports: [
                CommonModule,
                RouterModule,
                FlexLayoutModule,
                MatButtonModule,
                MatDividerModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                MatMenuModule,
                MatListModule,
                MatTooltipModule
            ],
            exports: [
                FuseShortcutsComponent
            ],
            providers: [
                CookieService
            ]
        })
    ], FuseShortcutsModule);
    return FuseShortcutsModule;
}());
export { FuseShortcutsModule };
//# sourceMappingURL=shortcuts.module.js.map