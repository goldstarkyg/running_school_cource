import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Subject } from 'rxjs';
import { debounceTime, distinctUntilChanged, takeUntil } from 'rxjs/operators';
import { FuseSidebarService } from '@fuse/components/sidebar/sidebar.service';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { MailService } from 'app/main/mail/mail.service';
import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
var MailComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MailService} _mailService
     * @param {FuseSidebarService} _fuseSidebarService
     * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
     */
    function MailComponent(_mailService, _fuseSidebarService, _fuseTranslationLoaderService) {
        this._mailService = _mailService;
        this._fuseSidebarService = _fuseSidebarService;
        this._fuseTranslationLoaderService = _fuseTranslationLoaderService;
        // Load the translations
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
        // Set the defaults
        this.searchInput = new FormControl('');
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    MailComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._mailService.onSelectedMailsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (selectedMails) {
            setTimeout(function () {
                _this.hasSelectedMails = selectedMails.length > 0;
                _this.isIndeterminate = (selectedMails.length !== _this._mailService.mails.length && selectedMails.length > 0);
            }, 0);
        });
        this._mailService.onFoldersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (folders) {
            _this.folders = _this._mailService.folders;
        });
        this._mailService.onFiltersChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (folders) {
            _this.filters = _this._mailService.filters;
        });
        this._mailService.onLabelsChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (labels) {
            _this.labels = _this._mailService.labels;
        });
        this._mailService.onCurrentMailChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (currentMail) {
            if (!currentMail) {
                _this.currentMail = null;
            }
            else {
                _this.currentMail = currentMail;
            }
        });
        this.searchInput.valueChanges.pipe(takeUntil(this._unsubscribeAll), debounceTime(300), distinctUntilChanged())
            .subscribe(function (searchText) {
            _this._mailService.onSearchTextChanged.next(searchText);
        });
    };
    /**
     * On destroy
     */
    MailComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Toggle select all
     */
    MailComponent.prototype.toggleSelectAll = function () {
        this._mailService.toggleSelectAll();
    };
    /**
     * Select mails
     *
     * @param filterParameter
     * @param filterValue
     */
    MailComponent.prototype.selectMails = function (filterParameter, filterValue) {
        this._mailService.selectMails(filterParameter, filterValue);
    };
    /**
     * Deselect mails
     */
    MailComponent.prototype.deselectMails = function () {
        this._mailService.deselectMails();
    };
    /**
     * Deselect current mail
     */
    MailComponent.prototype.deselectCurrentMail = function () {
        this._mailService.onCurrentMailChanged.next(null);
    };
    /**
     * Toggle label on selected mails
     *
     * @param labelId
     */
    MailComponent.prototype.toggleLabelOnSelectedMails = function (labelId) {
        this._mailService.toggleLabelOnSelectedMails(labelId);
    };
    /**
     * Set folder on selected mails
     *
     * @param folderId
     */
    MailComponent.prototype.setFolderOnSelectedMails = function (folderId) {
        this._mailService.setFolderOnSelectedMails(folderId);
    };
    /**
     * Toggle the sidebar
     *
     * @param name
     */
    MailComponent.prototype.toggleSidebar = function (name) {
        this._fuseSidebarService.getSidebar(name).toggleOpen();
    };
    MailComponent = tslib_1.__decorate([
        Component({
            selector: 'mail',
            templateUrl: './mail.component.html',
            styleUrls: ['./mail.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__metadata("design:paramtypes", [MailService,
            FuseSidebarService,
            FuseTranslationLoaderService])
    ], MailComponent);
    return MailComponent;
}());
export { MailComponent };
//# sourceMappingURL=mail.component.js.map