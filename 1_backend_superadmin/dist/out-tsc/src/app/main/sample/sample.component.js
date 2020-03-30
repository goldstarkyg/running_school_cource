import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
var SampleComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
     */
    function SampleComponent(_fuseTranslationLoaderService) {
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
    }
    SampleComponent = tslib_1.__decorate([
        Component({
            selector: 'sample',
            templateUrl: './sample.component.html',
            styleUrls: ['./sample.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [FuseTranslationLoaderService])
    ], SampleComponent);
    return SampleComponent;
}());
export { SampleComponent };
//# sourceMappingURL=sample.component.js.map