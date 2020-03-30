import * as tslib_1 from "tslib";
import { Component, ViewChild } from '@angular/core';
import { MatPaginator, MatTableDataSource } from '@angular/material';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
import { GroupsService } from '../../../services/groups.service';
import { LocalsessionService } from '../../../services/localsession.service';
import { NgxSpinnerService } from 'ngx-spinner';
var GrouplistComponent = /** @class */ (function () {
    /**
    * Constructor
    *
    * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
    */
    function GrouplistComponent(_fuseTranslationLoaderService, groupsService, spinner, localsession) {
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        this.groupsService = groupsService;
        this.spinner = spinner;
        this.localsession = localsession;
        this.model = {};
        this.groupList = [];
        this.displayedColumns = ['id', 'name', 'persons', 'actions'];
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
    }
    GrouplistComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.model['token'] = this.localsession.retrieveToken();
        this.model['user_id'] = this.localsession.retrieveUserID();
        this.spinner.show();
        // this.model['token'] = 'MTU2MDUxMDU4N21yclNxcVpXU3liYzI1S2Q1Z3dZ';
        // this.model['user_id'] = '1';
        this.groupsService.getGroupList(this.model).subscribe(function (data) {
            /** spinner ends */
            _this.spinner.hide();
            _this.dataSource = new MatTableDataSource(data);
            _this.dataSource.paginator = _this.paginator;
        }, function (error) {
            /** spinner ends */
            _this.spinner.hide();
        });
    };
    GrouplistComponent.prototype.modify = function (item) {
        // your delete code
    };
    tslib_1.__decorate([
        ViewChild(MatPaginator),
        tslib_1.__metadata("design:type", MatPaginator)
    ], GrouplistComponent.prototype, "paginator", void 0);
    GrouplistComponent = tslib_1.__decorate([
        Component({
            selector: 'app-grouplist',
            templateUrl: './grouplist.component.html',
            styleUrls: ['./grouplist.component.scss']
        }),
        tslib_1.__metadata("design:paramtypes", [FuseTranslationLoaderService,
            GroupsService,
            NgxSpinnerService,
            LocalsessionService])
    ], GrouplistComponent);
    return GrouplistComponent;
}());
export { GrouplistComponent };
//# sourceMappingURL=grouplist.component.js.map