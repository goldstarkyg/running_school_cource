import * as tslib_1 from "tslib";
import { Component, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
var ResultsComponent = /** @class */ (function () {
    function ResultsComponent(dialogRef, data) {
        this.dialogRef = dialogRef;
        this.data = data;
    }
    ResultsComponent.prototype.ngOnInit = function () {
    };
    ResultsComponent.prototype.onNoClick = function () {
        this.dialogRef.close();
    };
    ResultsComponent = tslib_1.__decorate([
        Component({
            selector: 'app-results',
            templateUrl: './results.component.html',
            styleUrls: ['./results.component.scss']
        }),
        tslib_1.__param(1, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef, Object])
    ], ResultsComponent);
    return ResultsComponent;
}());
export { ResultsComponent };
//# sourceMappingURL=results.component.js.map