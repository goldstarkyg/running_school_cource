import * as tslib_1 from "tslib";
import { Component, ElementRef, Input, Renderer2, ViewEncapsulation } from '@angular/core';
var NavbarComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ElementRef} _elementRef
     * @param {Renderer2} _renderer
     */
    function NavbarComponent(_elementRef, _renderer) {
        this._elementRef = _elementRef;
        this._renderer = _renderer;
        // Set the private defaults
        this._variant = 'vertical-style-1';
    }
    Object.defineProperty(NavbarComponent.prototype, "variant", {
        // -----------------------------------------------------------------------------------------------------
        // @ Accessors
        // -----------------------------------------------------------------------------------------------------
        /**
         * Variant
         */
        get: function () {
            return this._variant;
        },
        set: function (value) {
            // Remove the old class name
            this._renderer.removeClass(this._elementRef.nativeElement, this.variant);
            // Store the variant value
            this._variant = value;
            // Add the new class name
            this._renderer.addClass(this._elementRef.nativeElement, value);
        },
        enumerable: true,
        configurable: true
    });
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String),
        tslib_1.__metadata("design:paramtypes", [String])
    ], NavbarComponent.prototype, "variant", null);
    NavbarComponent = tslib_1.__decorate([
        Component({
            selector: 'navbar',
            templateUrl: './navbar.component.html',
            styleUrls: ['./navbar.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__metadata("design:paramtypes", [ElementRef,
            Renderer2])
    ], NavbarComponent);
    return NavbarComponent;
}());
export { NavbarComponent };
//# sourceMappingURL=navbar.component.js.map