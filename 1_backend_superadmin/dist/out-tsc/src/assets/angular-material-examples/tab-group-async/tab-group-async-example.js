import * as tslib_1 from "tslib";
import { Component } from '@angular/core';
import { Observable } from 'rxjs';
/**
 * @title Tab group with asynchronously loading tab contents
 */
var TabGroupAsyncExample = /** @class */ (function () {
    function TabGroupAsyncExample() {
        this.asyncTabs = Observable.create(function (observer) {
            setTimeout(function () {
                observer.next([
                    { label: 'First', content: 'Content 1' },
                    { label: 'Second', content: 'Content 2' },
                    { label: 'Third', content: 'Content 3' },
                ]);
            }, 1000);
        });
    }
    TabGroupAsyncExample = tslib_1.__decorate([
        Component({
            selector: 'tab-group-async-example',
            templateUrl: 'tab-group-async-example.html',
            styleUrls: ['tab-group-async-example.css'],
        }),
        tslib_1.__metadata("design:paramtypes", [])
    ], TabGroupAsyncExample);
    return TabGroupAsyncExample;
}());
export { TabGroupAsyncExample };
//# sourceMappingURL=tab-group-async-example.js.map