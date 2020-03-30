import * as tslib_1 from "tslib";
import { FocusMonitor } from '@angular/cdk/a11y';
import { ChangeDetectorRef, Component, ElementRef, NgZone, ViewChild } from '@angular/core';
/** @title Focusing with a specific FocusOrigin */
var FocusMonitorFocusViaExample = /** @class */ (function () {
    function FocusMonitorFocusViaExample(focusMonitor, cdr, ngZone) {
        this.focusMonitor = focusMonitor;
        this.cdr = cdr;
        this.ngZone = ngZone;
        this.origin = this.formatOrigin(null);
    }
    FocusMonitorFocusViaExample.prototype.ngOnInit = function () {
        var _this = this;
        this.focusMonitor.monitor(this.monitoredEl)
            .subscribe(function (origin) { return _this.ngZone.run(function () {
            _this.origin = _this.formatOrigin(origin);
            _this.cdr.markForCheck();
        }); });
    };
    FocusMonitorFocusViaExample.prototype.ngOnDestroy = function () {
        this.focusMonitor.stopMonitoring(this.monitoredEl);
    };
    FocusMonitorFocusViaExample.prototype.formatOrigin = function (origin) {
        return origin ? origin + ' focused' : 'blurred';
    };
    tslib_1.__decorate([
        ViewChild('monitored'),
        tslib_1.__metadata("design:type", ElementRef)
    ], FocusMonitorFocusViaExample.prototype, "monitoredEl", void 0);
    FocusMonitorFocusViaExample = tslib_1.__decorate([
        Component({
            selector: 'focus-monitor-focus-via-example',
            templateUrl: 'focus-monitor-focus-via-example.html',
            styleUrls: ['focus-monitor-focus-via-example.css']
        }),
        tslib_1.__metadata("design:paramtypes", [FocusMonitor,
            ChangeDetectorRef,
            NgZone])
    ], FocusMonitorFocusViaExample);
    return FocusMonitorFocusViaExample;
}());
export { FocusMonitorFocusViaExample };
//# sourceMappingURL=focus-monitor-focus-via-example.js.map