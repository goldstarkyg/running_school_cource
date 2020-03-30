import * as tslib_1 from "tslib";
import { Component, ViewChild } from '@angular/core';
import { MatSidenav } from '@angular/material/sidenav';
/** @title Sidenav with custom escape and backdrop click behavior */
var SidenavDisableCloseExample = /** @class */ (function () {
    function SidenavDisableCloseExample() {
        this.reason = '';
        this.shouldRun = [/(^|\.)plnkr\.co$/, /(^|\.)stackblitz\.io$/].some(function (h) { return h.test(window.location.host); });
    }
    SidenavDisableCloseExample.prototype.close = function (reason) {
        this.reason = reason;
        this.sidenav.close();
    };
    tslib_1.__decorate([
        ViewChild('sidenav'),
        tslib_1.__metadata("design:type", MatSidenav)
    ], SidenavDisableCloseExample.prototype, "sidenav", void 0);
    SidenavDisableCloseExample = tslib_1.__decorate([
        Component({
            selector: 'sidenav-disable-close-example',
            templateUrl: 'sidenav-disable-close-example.html',
            styleUrls: ['sidenav-disable-close-example.css'],
        })
    ], SidenavDisableCloseExample);
    return SidenavDisableCloseExample;
}());
export { SidenavDisableCloseExample };
//# sourceMappingURL=sidenav-disable-close-example.js.map