import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
/**
 * @title Tab group where the tab content is loaded lazily (when activated)
 */
var TabGroupLazyLoadedExample = /** @class */ (function () {
    function TabGroupLazyLoadedExample() {
        this.tabLoadTimes = [];
    }
    TabGroupLazyLoadedExample.prototype.getTimeLoaded = function (index) {
        if (!this.tabLoadTimes[index]) {
            this.tabLoadTimes[index] = new Date();
        }
        return this.tabLoadTimes[index];
    };
    TabGroupLazyLoadedExample = tslib_1.__decorate([
        Component({
            selector: 'tab-group-lazy-loaded-example',
            templateUrl: 'tab-group-lazy-loaded-example.html',
            styleUrls: ['tab-group-lazy-loaded-example.css'],
        })
    ], TabGroupLazyLoadedExample);
    return TabGroupLazyLoadedExample;
}());
export { TabGroupLazyLoadedExample };
//# sourceMappingURL=tab-group-lazy-loaded-example.js.map