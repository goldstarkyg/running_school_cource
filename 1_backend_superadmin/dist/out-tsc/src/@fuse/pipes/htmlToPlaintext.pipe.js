import * as tslib_1 from "tslib";
import { Pipe } from '@angular/core';
var HtmlToPlaintextPipe = /** @class */ (function () {
    function HtmlToPlaintextPipe() {
    }
    /**
     * Transform
     *
     * @param {string} value
     * @param {any[]} args
     * @returns {string}
     */
    HtmlToPlaintextPipe.prototype.transform = function (value, args) {
        if (args === void 0) { args = []; }
        return value ? String(value).replace(/<[^>]+>/gm, '') : '';
    };
    HtmlToPlaintextPipe = tslib_1.__decorate([
        Pipe({ name: 'htmlToPlaintext' })
    ], HtmlToPlaintextPipe);
    return HtmlToPlaintextPipe;
}());
export { HtmlToPlaintextPipe };
//# sourceMappingURL=htmlToPlaintext.pipe.js.map