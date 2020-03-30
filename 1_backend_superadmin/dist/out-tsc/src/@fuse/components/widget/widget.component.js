import * as tslib_1 from "tslib";
import { Component, ContentChildren, ElementRef, HostBinding, QueryList, Renderer2, ViewEncapsulation } from '@angular/core';
import { FuseWidgetToggleDirective } from './widget-toggle.directive';
var FuseWidgetComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ElementRef} _elementRef
     * @param {Renderer2} _renderer
     */
    function FuseWidgetComponent(_elementRef, _renderer) {
        this._elementRef = _elementRef;
        this._renderer = _renderer;
        this.flipped = false;
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * After content init
     */
    FuseWidgetComponent.prototype.ngAfterContentInit = function () {
        var _this = this;
        // Listen for the flip button click
        setTimeout(function () {
            _this.toggleButtons.forEach(function (flipButton) {
                _this._renderer.listen(flipButton.elementRef.nativeElement, 'click', function (event) {
                    event.preventDefault();
                    event.stopPropagation();
                    _this.toggle();
                });
            });
        });
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Toggle the flipped status
     */
    FuseWidgetComponent.prototype.toggle = function () {
        this.flipped = !this.flipped;
    };
    tslib_1.__decorate([
        HostBinding('class.flipped'),
        tslib_1.__metadata("design:type", Object)
    ], FuseWidgetComponent.prototype, "flipped", void 0);
    tslib_1.__decorate([
        ContentChildren(FuseWidgetToggleDirective, { descendants: true }),
        tslib_1.__metadata("design:type", QueryList)
    ], FuseWidgetComponent.prototype, "toggleButtons", void 0);
    FuseWidgetComponent = tslib_1.__decorate([
        Component({
            selector: 'fuse-widget',
            templateUrl: './widget.component.html',
            styleUrls: ['./widget.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__metadata("design:paramtypes", [ElementRef,
            Renderer2])
    ], FuseWidgetComponent);
    return FuseWidgetComponent;
}());
export { FuseWidgetComponent };
//# sourceMappingURL=widget.component.js.map