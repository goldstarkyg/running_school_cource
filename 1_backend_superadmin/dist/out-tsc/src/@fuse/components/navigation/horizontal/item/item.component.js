import * as tslib_1 from "tslib";
import { Component, HostBinding, Input } from '@angular/core';
var FuseNavHorizontalItemComponent = /** @class */ (function () {
    /**
     * Constructor
     */
    function FuseNavHorizontalItemComponent() {
        this.classes = 'nav-item';
    }
    tslib_1.__decorate([
        HostBinding('class'),
        tslib_1.__metadata("design:type", Object)
    ], FuseNavHorizontalItemComponent.prototype, "classes", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", Object)
    ], FuseNavHorizontalItemComponent.prototype, "item", void 0);
    FuseNavHorizontalItemComponent = tslib_1.__decorate([
        Component({
            selector: 'fuse-nav-horizontal-item',
            templateUrl: './item.component.html',
            styleUrls: ['./item.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], FuseNavHorizontalItemComponent);
    return FuseNavHorizontalItemComponent;
}());
export { FuseNavHorizontalItemComponent };
//# sourceMappingURL=item.component.js.map