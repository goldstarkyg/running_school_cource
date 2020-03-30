import * as tslib_1 from "tslib";
import { Pipe } from '@angular/core';
var CamelCaseToDashPipe = /** @class */ (function () {
    function CamelCaseToDashPipe() {
    }
    /**
     * Transform
     *
     * @param {string} value
     * @param {any[]} args
     * @returns {string}
     */
    CamelCaseToDashPipe.prototype.transform = function (value, args) {
        if (args === void 0) { args = []; }
        return value ? String(value).replace(/([A-Z])/g, function (g) { return "-" + g[0].toLowerCase(); }) : '';
    };
    CamelCaseToDashPipe = tslib_1.__decorate([
        Pipe({ name: 'camelCaseToDash' })
    ], CamelCaseToDashPipe);
    return CamelCaseToDashPipe;
}());
export { CamelCaseToDashPipe };
//# sourceMappingURL=camelCaseToDash.pipe.js.map