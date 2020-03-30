import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
var FuseTranslationLoaderService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {TranslateService} _translateService
     */
    function FuseTranslationLoaderService(_translateService) {
        this._translateService = _translateService;
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Load translations
     *
     * @param {Locale} args
     */
    FuseTranslationLoaderService.prototype.loadTranslations = function () {
        var _this = this;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        var locales = args.slice();
        locales.forEach(function (locale) {
            // use setTranslation() with the third argument set to true
            // to append translations instead of replacing them
            _this._translateService.setTranslation(locale.lang, locale.data, true);
        });
    };
    FuseTranslationLoaderService = tslib_1.__decorate([
        Injectable({
            providedIn: 'root'
        }),
        tslib_1.__metadata("design:paramtypes", [TranslateService])
    ], FuseTranslationLoaderService);
    return FuseTranslationLoaderService;
}());
export { FuseTranslationLoaderService };
//# sourceMappingURL=translation-loader.service.js.map