import { ApplicationRef } from '@angular/core';
import { createNewHosts } from '@angularclass/hmr';
export var hmrBootstrap = function (module, bootstrap) {
    var ngModule;
    module.hot.accept();
    bootstrap().then(function (mod) { return ngModule = mod; });
    module.hot.dispose(function () {
        var appRef = ngModule.injector.get(ApplicationRef);
        var elements = appRef.components.map(function (c) { return c.location.nativeElement; });
        var makeVisible = createNewHosts(elements);
        ngModule.destroy();
        makeVisible();
    });
};
//# sourceMappingURL=hmr.js.map