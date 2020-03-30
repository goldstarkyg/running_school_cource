import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { MatButtonModule, MatDialogModule } from '@angular/material';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
var FuseConfirmDialogModule = /** @class */ (function () {
    function FuseConfirmDialogModule() {
    }
    FuseConfirmDialogModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                FuseConfirmDialogComponent
            ],
            imports: [
                MatDialogModule,
                MatButtonModule
            ],
            entryComponents: [
                FuseConfirmDialogComponent
            ],
        })
    ], FuseConfirmDialogModule);
    return FuseConfirmDialogModule;
}());
export { FuseConfirmDialogModule };
//# sourceMappingURL=confirm-dialog.module.js.map