import * as tslib_1 from "tslib";
import { Pipe } from '@angular/core';
import { FuseUtils } from '@fuse/utils';
var FilterPipe = /** @class */ (function () {
    function FilterPipe() {
    }
    /**
     * Transform
     *
     * @param {any[]} mainArr
     * @param {string} searchText
     * @param {string} property
     * @returns {any}
     */
    FilterPipe.prototype.transform = function (mainArr, searchText, property) {
        return FuseUtils.filterArrayByString(mainArr, searchText);
    };
    FilterPipe = tslib_1.__decorate([
        Pipe({ name: 'filter' })
    ], FilterPipe);
    return FilterPipe;
}());
export { FilterPipe };
//# sourceMappingURL=filter.pipe.js.map