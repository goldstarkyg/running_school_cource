import * as tslib_1 from "tslib";
/**
 * This class is based on the code in the following projects:
 * https://github.com/zenorocha/select
 * https://github.com/zenorocha/clipboard.js/
 *
 * Both released under MIT license - © Zeno Rocha
 */
import { Injectable } from '@angular/core';
var FuseCopierService = /** @class */ (function () {
    function FuseCopierService() {
    }
    /**
     * Copy the text value to the clipboard
     *
     * @param {string} text
     * @returns {boolean}
     */
    FuseCopierService.prototype.copyText = function (text) {
        this.createTextareaAndSelect(text);
        var copySuccessful = document.execCommand('copy');
        this._removeFake();
        return copySuccessful;
    };
    /**
     * Creates a hidden textarea element, sets its value from `text` property,
     * and makes a selection on it.
     *
     * @param {string} text
     */
    FuseCopierService.prototype.createTextareaAndSelect = function (text) {
        // Create a fake element to hold the contents to copy
        this.textarea = document.createElement('textarea');
        // Prevent zooming on iOS
        this.textarea.style.fontSize = '12pt';
        // Hide the element
        this.textarea.classList.add('cdk-visually-hidden');
        // Move element to the same position vertically
        var yPosition = window.pageYOffset || document.documentElement.scrollTop;
        this.textarea.style.top = yPosition + 'px';
        this.textarea.setAttribute('readonly', '');
        this.textarea.value = text;
        document.body.appendChild(this.textarea);
        this.textarea.select();
        this.textarea.setSelectionRange(0, this.textarea.value.length);
    };
    /**
     * Remove the text area from the DOM
     *
     * @private
     */
    FuseCopierService.prototype._removeFake = function () {
        if (this.textarea) {
            document.body.removeChild(this.textarea);
            this.textarea = null;
        }
    };
    FuseCopierService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        })
    ], FuseCopierService);
    return FuseCopierService;
}());
export { FuseCopierService };
//# sourceMappingURL=copier.service.js.map