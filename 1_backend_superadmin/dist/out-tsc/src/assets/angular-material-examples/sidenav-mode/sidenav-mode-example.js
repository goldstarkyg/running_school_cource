import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';
/** @title Sidenav with configurable mode */
var SidenavModeExample = /** @class */ (function () {
    function SidenavModeExample() {
        this.mode = new FormControl('over');
        this.shouldRun = [/(^|\.)plnkr\.co$/, /(^|\.)stackblitz\.io$/].some(function (h) { return h.test(window.location.host); });
    }
    SidenavModeExample = tslib_1.__decorate([
        Component({
            selector: 'sidenav-mode-example',
            templateUrl: 'sidenav-mode-example.html',
            styleUrls: ['sidenav-mode-example.css'],
        })
    ], SidenavModeExample);
    return SidenavModeExample;
}());
export { SidenavModeExample };
//# sourceMappingURL=sidenav-mode-example.js.map