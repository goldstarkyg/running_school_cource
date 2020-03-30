import * as tslib_1 from "tslib";
import { ChangeDetectorRef, Component, NgZone } from '@angular/core';
/** @title Monitoring focus with FocusMonitor */
var FocusMonitorDirectivesExample = /** @class */ (function () {
    function FocusMonitorDirectivesExample(ngZone, cdr) {
        this.ngZone = ngZone;
        this.cdr = cdr;
        this.elementOrigin = this.formatOrigin(null);
        this.subtreeOrigin = this.formatOrigin(null);
    }
    FocusMonitorDirectivesExample.prototype.formatOrigin = function (origin) {
        return origin ? origin + ' focused' : 'blurred';
    };
    // Workaround for the fact that (cdkFocusChange) emits outside NgZone.
    FocusMonitorDirectivesExample.prototype.markForCheck = function () {
        var _this = this;
        this.ngZone.run(function () { return _this.cdr.markForCheck(); });
    };
    FocusMonitorDirectivesExample = tslib_1.__decorate([
        Component({
            selector: 'focus-monitor-directives-example',
            templateUrl: 'focus-monitor-directives-example.html',
            styleUrls: ['focus-monitor-directives-example.css']
        }),
        tslib_1.__metadata("design:paramtypes", [NgZone, ChangeDetectorRef])
    ], FocusMonitorDirectivesExample);
    return FocusMonitorDirectivesExample;
}());
export { FocusMonitorDirectivesExample };
//# sourceMappingURL=focus-monitor-directives-example.js.map