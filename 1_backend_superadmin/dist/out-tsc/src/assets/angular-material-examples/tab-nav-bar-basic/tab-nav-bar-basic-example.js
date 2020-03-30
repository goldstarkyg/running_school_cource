import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Basic use of the tab nav bar
 */
var TabNavBarBasicExample = /** @class */ (function () {
    function TabNavBarBasicExample() {
        this.links = ['First', 'Second', 'Third'];
        this.activeLink = this.links[0];
        this.background = '';
    }
    TabNavBarBasicExample.prototype.toggleBackground = function () {
        this.background = this.background ? '' : 'primary';
    };
    TabNavBarBasicExample = tslib_1.__decorate([
        Component({
            selector: 'tab-nav-bar-basic-example',
            templateUrl: 'tab-nav-bar-basic-example.html',
            styleUrls: ['tab-nav-bar-basic-example.css'],
        })
    ], TabNavBarBasicExample);
    return TabNavBarBasicExample;
}());
export { TabNavBarBasicExample };
//# sourceMappingURL=tab-nav-bar-basic-example.js.map