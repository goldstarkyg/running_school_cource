import * as tslib_1 from "tslib";
import { FocusMonitor } from '@angular/cdk/a11y';
import { ChangeDetectorRef, Component, ElementRef, NgZone, ViewChild } from '@angular/core';
/** @title Monitoring focus with FocusMonitor */
var FocusMonitorOverviewExample = /** @class */ (function () {
    function FocusMonitorOverviewExample(focusMonitor, cdr, ngZone) {
        this.focusMonitor = focusMonitor;
        this.cdr = cdr;
        this.ngZone = ngZone;
        this.elementOrigin = this.formatOrigin(null);
        this.subtreeOrigin = this.formatOrigin(null);
    }
    FocusMonitorOverviewExample.prototype.ngOnInit = function () {
        var _this = this;
        this.focusMonitor.monitor(this.element)
            .subscribe(function (origin) { return _this.ngZone.run(function () {
            _this.elementOrigin = _this.formatOrigin(origin);
            _this.cdr.markForCheck();
        }); });
        this.focusMonitor.monitor(this.subtree, true)
            .subscribe(function (origin) { return _this.ngZone.run(function () {
            _this.subtreeOrigin = _this.formatOrigin(origin);
            _this.cdr.markForCheck();
        }); });
    };
    FocusMonitorOverviewExample.prototype.ngOnDestroy = function () {
        this.focusMonitor.stopMonitoring(this.element);
        this.focusMonitor.stopMonitoring(this.subtree);
    };
    FocusMonitorOverviewExample.prototype.formatOrigin = function (origin) {
        return origin ? origin + ' focused' : 'blurred';
    };
    tslib_1.__decorate([
        ViewChild('element'),
        tslib_1.__metadata("design:type", ElementRef)
    ], FocusMonitorOverviewExample.prototype, "element", void 0);
    tslib_1.__decorate([
        ViewChild('subtree'),
        tslib_1.__metadata("design:type", ElementRef)
    ], FocusMonitorOverviewExample.prototype, "subtree", void 0);
    FocusMonitorOverviewExample = tslib_1.__decorate([
        Component({
            selector: 'focus-monitor-overview-example',
            templateUrl: 'focus-monitor-overview-example.html',
            styleUrls: ['focus-monitor-overview-example.css']
        }),
        tslib_1.__metadata("design:paramtypes", [FocusMonitor,
            ChangeDetectorRef,
            NgZone])
    ], FocusMonitorOverviewExample);
    return FocusMonitorOverviewExample;
}());
export { FocusMonitorOverviewExample };
//# sourceMappingURL=focus-monitor-overview-example.js.map