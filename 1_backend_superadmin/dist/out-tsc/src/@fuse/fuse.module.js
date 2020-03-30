import * as tslib_1 from "tslib";
import { NgModule, Optional, SkipSelf } from '@angular/core';
import { FUSE_CONFIG } from '@fuse/services/config.service';
var FuseModule = /** @class */ (function () {
    function FuseModule(parentModule) {
        if (parentModule) {
            throw new Error('FuseModule is already loaded. Import it in the AppModule only!');
        }
    }
    FuseModule_1 = FuseModule;
    FuseModule.forRoot = function (config) {
        return {
            ngModule: FuseModule_1,
            providers: [
                {
                    provide: FUSE_CONFIG,
                    useValue: config
                }
            ]
        };
    };
    var FuseModule_1;
    FuseModule = FuseModule_1 = tslib_1.__decorate([
        NgModule(),
        tslib_1.__param(0, Optional()), tslib_1.__param(0, SkipSelf()),
        tslib_1.__metadata("design:paramtypes", [FuseModule])
    ], FuseModule);
    return FuseModule;
}());
export { FuseModule };
//# sourceMappingURL=fuse.module.js.map