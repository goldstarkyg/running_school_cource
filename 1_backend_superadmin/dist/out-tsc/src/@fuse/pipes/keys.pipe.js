import * as tslib_1 from "tslib";
import { Pipe } from '@angular/core';
var KeysPipe = /** @class */ (function () {
    function KeysPipe() {
    }
    /**
     * Transform
     *
     * @param value
     * @param {string[]} args
     * @returns {any}
     */
    KeysPipe.prototype.transform = function (value, args) {
        var keys = [];
        for (var key in value) {
            if (value.hasOwnProperty(key)) {
                keys.push({
                    key: key,
                    value: value[key]
                });
            }
        }
        return keys;
    };
    KeysPipe = tslib_1.__decorate([
        Pipe({ name: 'keys' })
    ], KeysPipe);
    return KeysPipe;
}());
export { KeysPipe };
//# sourceMappingURL=keys.pipe.js.map