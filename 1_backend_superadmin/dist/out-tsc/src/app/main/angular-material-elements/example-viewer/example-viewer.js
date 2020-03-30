import * as tslib_1 from "tslib";
import { Component, ComponentFactoryResolver, Input, ViewChild, ViewContainerRef, ViewEncapsulation } from '@angular/core';
import { MatSnackBar } from '@angular/material';
import 'prismjs/components/prism-scss';
import 'prismjs/components/prism-typescript';
import { fuseAnimations } from '@fuse/animations/index';
import { FuseCopierService } from '@fuse/services/copier.service';
import { EXAMPLE_COMPONENTS } from 'app/main/angular-material-elements/example-components';
var ExampleViewerComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatSnackBar} _matSnackBar
     * @param {FuseCopierService} _fuseCopierService
     * @param {ComponentFactoryResolver} _componentFactoryResolver
     */
    function ExampleViewerComponent(_matSnackBar, _fuseCopierService, _componentFactoryResolver) {
        this._matSnackBar = _matSnackBar;
        this._fuseCopierService = _fuseCopierService;
        this._componentFactoryResolver = _componentFactoryResolver;
        // Set the defaults
        this.selectedIndex = 0;
        this.showSource = false;
    }
    Object.defineProperty(ExampleViewerComponent.prototype, "container", {
        get: function () {
            return this._previewContainer;
        },
        // -----------------------------------------------------------------------------------------------------
        // @ Accessors
        // -----------------------------------------------------------------------------------------------------
        /**
         * Container
         *
         * @param {ViewContainerRef} value
         */
        set: function (value) {
            this._previewContainer = value;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ExampleViewerComponent.prototype, "example", {
        get: function () {
            return this._example;
        },
        /**
         * Example
         *
         * @param {string} example
         */
        set: function (example) {
            if (example && EXAMPLE_COMPONENTS[example]) {
                this._example = example;
                this.exampleData = EXAMPLE_COMPONENTS[example];
            }
            else {
            }
        },
        enumerable: true,
        configurable: true
    });
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * After view init
     */
    ExampleViewerComponent.prototype.ngAfterViewInit = function () {
        var _this = this;
        setTimeout(function () {
            var cmpFactory = _this._componentFactoryResolver.resolveComponentFactory(_this.exampleData.component);
            _this.previewRef = _this._previewContainer.createComponent(cmpFactory);
        }, 0);
    };
    /**
     * On destroy
     */
    ExampleViewerComponent.prototype.ngOnDestroy = function () {
        if (this.previewRef) {
            this.previewRef.destroy();
        }
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Toggle source view
     */
    ExampleViewerComponent.prototype.toggleSourceView = function () {
        this.showSource = !this.showSource;
    };
    /**
     * Copy the source
     *
     * @param {string} text
     */
    ExampleViewerComponent.prototype.copySource = function (text) {
        if (this._fuseCopierService.copyText(text)) {
            this._matSnackBar.open('Code copied', '', { duration: 2500 });
        }
        else {
            this._matSnackBar.open('Copy failed. Please try again!', '', { duration: 2500 });
        }
    };
    tslib_1.__decorate([
        ViewChild('previewContainer', { read: ViewContainerRef }),
        tslib_1.__metadata("design:type", ViewContainerRef)
    ], ExampleViewerComponent.prototype, "_previewContainer", void 0);
    tslib_1.__decorate([
        Input(),
        tslib_1.__metadata("design:type", String),
        tslib_1.__metadata("design:paramtypes", [String])
    ], ExampleViewerComponent.prototype, "example", null);
    ExampleViewerComponent = tslib_1.__decorate([
        Component({
            selector: 'example-viewer',
            templateUrl: './example-viewer.html',
            styleUrls: ['./example-viewer.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [MatSnackBar,
            FuseCopierService,
            ComponentFactoryResolver])
    ], ExampleViewerComponent);
    return ExampleViewerComponent;
}());
export { ExampleViewerComponent };
//# sourceMappingURL=example-viewer.js.map