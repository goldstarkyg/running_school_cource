import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
var GlobalService = /** @class */ (function () {
    function GlobalService() {
        this.g_nDisplySchoolMode = 0; // 0: list, 1 : add
        this.g_nDisplyTrainerMode = 0; // 0: list, 1 : add
        this.g_nTrainerID = 0;
        this.g_nSchoolID = 0;
    }
    GlobalService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], GlobalService);
    return GlobalService;
}());
export { GlobalService };
//# sourceMappingURL=global.service.js.map