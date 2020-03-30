import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/** @title Sidenav open & close behavior */
var SidenavOpenCloseExample = /** @class */ (function () {
    function SidenavOpenCloseExample() {
        this.events = [];
        this.shouldRun = [/(^|\.)plnkr\.co$/, /(^|\.)stackblitz\.io$/].some(function (h) { return h.test(window.location.host); });
    }
    SidenavOpenCloseExample = tslib_1.__decorate([
        Component({
            selector: 'sidenav-open-close-example',
            templateUrl: 'sidenav-open-close-example.html',
            styleUrls: ['sidenav-open-close-example.css'],
        })
    ], SidenavOpenCloseExample);
    return SidenavOpenCloseExample;
}());
export { SidenavOpenCloseExample };
//# sourceMappingURL=sidenav-open-close-example.js.map