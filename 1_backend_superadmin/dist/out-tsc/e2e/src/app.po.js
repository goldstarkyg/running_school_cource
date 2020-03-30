import { browser, by, element } from 'protractor';
var FusePage = /** @class */ (function () {
    function FusePage() {
    }
    FusePage.prototype.navigateTo = function () {
        return browser.get('/');
    };
    FusePage.prototype.getParagraphText = function () {
        return element(by.css('app #main')).getText();
    };
    return FusePage;
}());
export { FusePage };
//# sourceMappingURL=app.po.js.map