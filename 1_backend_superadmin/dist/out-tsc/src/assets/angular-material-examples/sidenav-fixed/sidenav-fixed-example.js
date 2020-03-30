import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormBuilder } from '@angular/forms';
/** @title Fixed sidenav */
var SidenavFixedExample = /** @class */ (function () {
    function SidenavFixedExample(fb) {
        this.shouldRun = [/(^|\.)plnkr\.co$/, /(^|\.)stackblitz\.io$/].some(function (h) { return h.test(window.location.host); });
        this.options = fb.group({
            bottom: 0,
            fixed: false,
            top: 0
        });
    }
    SidenavFixedExample = tslib_1.__decorate([
        Component({
            selector: 'sidenav-fixed-example',
            templateUrl: 'sidenav-fixed-example.html',
            styleUrls: ['sidenav-fixed-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [FormBuilder])
    ], SidenavFixedExample);
    return SidenavFixedExample;
}());
export { SidenavFixedExample };
//# sourceMappingURL=sidenav-fixed-example.js.map