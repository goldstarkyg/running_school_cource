import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/** @title Basic sidenav */
var SidenavOverviewExample = /** @class */ (function () {
    function SidenavOverviewExample() {
        this.shouldRun = [/(^|\.)plnkr\.co$/, /(^|\.)stackblitz\.io$/].some(function (h) { return h.test(window.location.host); });
    }
    SidenavOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'sidenav-overview-example',
            templateUrl: 'sidenav-overview-example.html',
            styleUrls: ['sidenav-overview-example.css'],
        })
    ], SidenavOverviewExample);
    return SidenavOverviewExample;
}());
export { SidenavOverviewExample };
//# sourceMappingURL=sidenav-overview-example.js.map