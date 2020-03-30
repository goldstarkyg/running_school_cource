import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { MatBottomSheet, MatBottomSheetRef } from '@angular/material';
/**
 * @title Bottom Sheet Overview
 */
var BottomSheetOverviewExample = /** @class */ (function () {
    function BottomSheetOverviewExample(bottomSheet) {
        this.bottomSheet = bottomSheet;
    }
    BottomSheetOverviewExample.prototype.openBottomSheet = function () {
        this.bottomSheet.open(BottomSheetOverviewExampleSheet);
    };
    BottomSheetOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'bottom-sheet-overview-example',
            templateUrl: 'bottom-sheet-overview-example.html',
            styleUrls: ['bottom-sheet-overview-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [MatBottomSheet])
    ], BottomSheetOverviewExample);
    return BottomSheetOverviewExample;
}());
export { BottomSheetOverviewExample };
var BottomSheetOverviewExampleSheet = /** @class */ (function () {
    function BottomSheetOverviewExampleSheet(bottomSheetRef) {
        this.bottomSheetRef = bottomSheetRef;
    }
    BottomSheetOverviewExampleSheet.prototype.openLink = function (event) {
        this.bottomSheetRef.dismiss();
        event.preventDefault();
    };
    BottomSheetOverviewExampleSheet = tslib_1.__decorate([
        Component({
            selector: 'bottom-sheet-overview-example-sheet',
            templateUrl: 'bottom-sheet-overview-example-sheet.html',
        }),
        tslib_1.__metadata("design:paramtypes", [MatBottomSheetRef])
    ], BottomSheetOverviewExampleSheet);
    return BottomSheetOverviewExampleSheet;
}());
export { BottomSheetOverviewExampleSheet };
//# sourceMappingURL=bottom-sheet-overview-example.js.map