import { FusePage } from './app.po';
describe('Fuse App', function () {
    var page;
    beforeEach(function () {
        page = new FusePage();
    });
    it('should display welcome message', function () {
        page.navigateTo();
        expect(page.getParagraphText()).toEqual('Welcome to Fuse!');
    });
});
//# sourceMappingURL=app.e2e-spec.js.map