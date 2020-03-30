import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
var FuseMatSidenavHelperService = /** @class */ (function () {
    /**
     * Constructor
     */
    function FuseMatSidenavHelperService() {
        this.sidenavInstances = [];
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Accessors
    // -----------------------------------------------------------------------------------------------------
    /**
     * Set sidenav
     *
     * @param id
     * @param instance
     */
    FuseMatSidenavHelperService.prototype.setSidenav = function (id, instance) {
        this.sidenavInstances[id] = instance;
    };
    /**
     * Get sidenav
     *
     * @param id
     * @returns {any}
     */
    FuseMatSidenavHelperService.prototype.getSidenav = function (id) {
        return this.sidenavInstances[id];
    };
    FuseMatSidenavHelperService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], FuseMatSidenavHelperService);
    return FuseMatSidenavHelperService;
}());
export { FuseMatSidenavHelperService };
//# sourceMappingURL=fuse-mat-sidenav.service.js.map