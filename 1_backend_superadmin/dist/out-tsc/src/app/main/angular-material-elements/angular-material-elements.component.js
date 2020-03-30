import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { COMPONENT_MAP } from 'app/main/angular-material-elements/example-components';
var AngularMaterialElementsComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {ActivatedRoute} _activatedRoute
     */
    function AngularMaterialElementsComponent(_activatedRoute) {
        this._activatedRoute = _activatedRoute;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    /**
     * On init
     */
    AngularMaterialElementsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._activatedRoute.params
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (params) {
            _this.id = params['id'];
            var _title = _this.id.replace('-', ' ');
            _this.title = _title.charAt(0).toUpperCase() + _title.substring(1);
            _this.examples = COMPONENT_MAP[_this.id];
        });
    };
    /**
     * On destroy
     */
    AngularMaterialElementsComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    AngularMaterialElementsComponent = tslib_1.__decorate([
        Component({
            selector: 'angular-material',
            templateUrl: './angular-material-elements.component.html',
            styleUrls: ['./angular-material-elements.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [ActivatedRoute])
    ], AngularMaterialElementsComponent);
    return AngularMaterialElementsComponent;
}());
export { AngularMaterialElementsComponent };
//# sourceMappingURL=angular-material-elements.component.js.map