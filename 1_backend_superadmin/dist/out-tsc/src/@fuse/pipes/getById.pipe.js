import * as tslib_1 from "tslib";
import { Pipe } from '@angular/core';
var GetByIdPipe = /** @class */ (function () {
    function GetByIdPipe() {
    }
    /**
     * Transform
     *
     * @param {any[]} value
     * @param {number} id
     * @param {string} property
     * @returns {any}
     */
    GetByIdPipe.prototype.transform = function (value, id, property) {
        var foundItem = value.find(function (item) {
            if (item.id !== undefined) {
                return item.id === id;
            }
            return false;
        });
        if (foundItem) {
            return foundItem[property];
        }
    };
    GetByIdPipe = tslib_1.__decorate([
        Pipe({
            name: 'getById',
            pure: false
        })
    ], GetByIdPipe);
    return GetByIdPipe;
}());
export { GetByIdPipe };
//# sourceMappingURL=getById.pipe.js.map