import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/** @title Implicit main content with two sidenavs */
var SidenavPositionExample = /** @class */ (function () {
    function SidenavPositionExample() {
        this.shouldRun = [/(^|\.)plnkr\.co$/, /(^|\.)stackblitz\.io$/].some(function (h) { return h.test(window.location.host); });
    }
    SidenavPositionExample = tslib_1.__decorate([
        Component({
            selector: 'sidenav-position-example',
            templateUrl: 'sidenav-position-example.html',
            styleUrls: ['sidenav-position-example.css'],
        })
    ], SidenavPositionExample);
    return SidenavPositionExample;
}());
export { SidenavPositionExample };
//# sourceMappingURL=sidenav-position-example.js.map