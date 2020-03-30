import * as tslib_1 from "tslib";
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { FuseUtils } from '@fuse/utils';
import { Mail } from 'app/main/mail/mail.model';
var MailService = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {HttpClient} _httpClient
     */
    function MailService(_httpClient) {
        this._httpClient = _httpClient;
        this.searchText = '';
        // Set the defaults
        this.selectedMails = [];
        this.onMailsChanged = new BehaviorSubject([]);
        this.onSelectedMailsChanged = new BehaviorSubject([]);
        this.onCurrentMailChanged = new BehaviorSubject([]);
        this.onFoldersChanged = new BehaviorSubject([]);
        this.onFiltersChanged = new BehaviorSubject([]);
        this.onLabelsChanged = new BehaviorSubject([]);
        this.onSearchTextChanged = new BehaviorSubject('');
    }
    /**
     * Resolver
     *
     * @param {ActivatedRouteSnapshot} route
     * @param {RouterStateSnapshot} state
     * @returns {Observable<any> | Promise<any> | any}
     */
    MailService.prototype.resolve = function (route, state) {
        var _this = this;
        this.routeParams = route.params;
        return new Promise(function (resolve, reject) {
            Promise.all([
                _this.getFolders(),
                _this.getFilters(),
                _this.getLabels(),
                _this.getMails()
            ]).then(function () {
                if (_this.routeParams.mailId) {
                    _this.setCurrentMail(_this.routeParams.mailId);
                }
                else {
                    _this.setCurrentMail(null);
                }
                _this.onSearchTextChanged.subscribe(function (searchText) {
                    if (searchText !== '') {
                        _this.searchText = searchText;
                        _this.getMails();
                    }
                    else {
                        _this.searchText = searchText;
                        _this.getMails();
                    }
                });
                resolve();
            }, reject);
        });
    };
    /**
     * Get all folders
     *
     * @returns {Promise<any>}
     */
    MailService.prototype.getFolders = function () {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/mail-folders')
                .subscribe(function (response) {
                _this.folders = response;
                _this.onFoldersChanged.next(_this.folders);
                resolve(_this.folders);
            }, reject);
        });
    };
    /**
     * Get all filters
     *
     * @returns {Promise<any>}
     */
    MailService.prototype.getFilters = function () {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/mail-filters')
                .subscribe(function (response) {
                _this.filters = response;
                _this.onFiltersChanged.next(_this.filters);
                resolve(_this.filters);
            }, reject);
        });
    };
    /**
     * Get all labels
     *
     * @returns {Promise<any>}
     */
    MailService.prototype.getLabels = function () {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/mail-labels')
                .subscribe(function (response) {
                _this.labels = response;
                _this.onLabelsChanged.next(_this.labels);
                resolve(_this.labels);
            }, reject);
        });
    };
    /**
     * Get all mails
     *
     * @returns {Promise<Mail[]>}
     */
    MailService.prototype.getMails = function () {
        if (this.routeParams.labelHandle) {
            return this.getMailsByLabel(this.routeParams.labelHandle);
        }
        if (this.routeParams.filterHandle) {
            return this.getMailsByFilter(this.routeParams.filterHandle);
        }
        return this.getMailsByFolder(this.routeParams.folderHandle);
    };
    /**
     * Get mails by folder
     *
     * @param handle
     * @returns {Promise<Mail[]>}
     */
    MailService.prototype.getMailsByFolder = function (handle) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/mail-folders?handle=' + handle)
                .subscribe(function (folders) {
                var folderId = folders[0].id;
                _this._httpClient.get('api/mail-mails?folder=' + folderId)
                    .subscribe(function (mails) {
                    _this.mails = mails.map(function (mail) {
                        return new Mail(mail);
                    });
                    _this.mails = FuseUtils.filterArrayByString(_this.mails, _this.searchText);
                    _this.onMailsChanged.next(_this.mails);
                    resolve(_this.mails);
                }, reject);
            });
        });
    };
    /**
     * Get mails by filter
     *
     * @param handle
     * @returns {Promise<Mail[]>}
     */
    MailService.prototype.getMailsByFilter = function (handle) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/mail-mails?' + handle + '=true')
                .subscribe(function (mails) {
                _this.mails = mails.map(function (mail) {
                    return new Mail(mail);
                });
                _this.mails = FuseUtils.filterArrayByString(_this.mails, _this.searchText);
                _this.onMailsChanged.next(_this.mails);
                resolve(_this.mails);
            }, reject);
        });
    };
    /**
     * Get mails by label
     *
     * @param handle
     * @returns {Promise<Mail[]>}
     */
    MailService.prototype.getMailsByLabel = function (handle) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.get('api/mail-labels?handle=' + handle)
                .subscribe(function (labels) {
                var labelId = labels[0].id;
                _this._httpClient.get('api/mail-mails?labels=' + labelId)
                    .subscribe(function (mails) {
                    _this.mails = mails.map(function (mail) {
                        return new Mail(mail);
                    });
                    _this.mails = FuseUtils.filterArrayByString(_this.mails, _this.searchText);
                    _this.onMailsChanged.next(_this.mails);
                    resolve(_this.mails);
                }, reject);
            });
        });
    };
    /**
     * Toggle selected mail by id
     *
     * @param id
     */
    MailService.prototype.toggleSelectedMail = function (id) {
        // First, check if we already have that mail as selected...
        if (this.selectedMails.length > 0) {
            for (var _i = 0, _a = this.selectedMails; _i < _a.length; _i++) {
                var mail = _a[_i];
                // ...delete the selected mail
                if (mail.id === id) {
                    var index = this.selectedMails.indexOf(mail);
                    if (index !== -1) {
                        this.selectedMails.splice(index, 1);
                        // Trigger the next event
                        this.onSelectedMailsChanged.next(this.selectedMails);
                        // Return
                        return;
                    }
                }
            }
        }
        // If we don't have it, push as selected
        this.selectedMails.push(this.mails.find(function (mail) {
            return mail.id === id;
        }));
        // Trigger the next event
        this.onSelectedMailsChanged.next(this.selectedMails);
    };
    /**
     * Toggle select all
     */
    MailService.prototype.toggleSelectAll = function () {
        if (this.selectedMails.length > 0) {
            this.deselectMails();
        }
        else {
            this.selectMails();
        }
    };
    /**
     * Select mails
     *
     * @param filterParameter
     * @param filterValue
     */
    MailService.prototype.selectMails = function (filterParameter, filterValue) {
        var _a;
        this.selectedMails = [];
        // If there is no filter, select all mails
        if (filterParameter === undefined || filterValue === undefined) {
            this.selectedMails = this.mails;
        }
        else {
            (_a = this.selectedMails).push.apply(_a, this.mails.filter(function (mail) {
                return mail[filterParameter] === filterValue;
            }));
        }
        // Trigger the next event
        this.onSelectedMailsChanged.next(this.selectedMails);
    };
    /**
     * Deselect mails
     */
    MailService.prototype.deselectMails = function () {
        this.selectedMails = [];
        // Trigger the next event
        this.onSelectedMailsChanged.next(this.selectedMails);
    };
    /**
     * Set current mail by id
     *
     * @param id
     */
    MailService.prototype.setCurrentMail = function (id) {
        this.currentMail = this.mails.find(function (mail) {
            return mail.id === id;
        });
        this.onCurrentMailChanged.next(this.currentMail);
    };
    /**
     * Toggle label on selected mails
     *
     * @param labelId
     */
    MailService.prototype.toggleLabelOnSelectedMails = function (labelId) {
        var _this = this;
        this.selectedMails.map(function (mail) {
            var index = mail.labels.indexOf(labelId);
            if (index !== -1) {
                mail.labels.splice(index, 1);
            }
            else {
                mail.labels.push(labelId);
            }
            _this.updateMail(mail);
        });
    };
    /**
     * Set folder on selected mails
     *
     * @param folderId
     */
    MailService.prototype.setFolderOnSelectedMails = function (folderId) {
        var _this = this;
        this.selectedMails.map(function (mail) {
            mail.folder = folderId;
            _this.updateMail(mail);
        });
        this.deselectMails();
    };
    /**
     * Update the mail
     *
     * @param mail
     * @returns {Promise<any>}
     */
    MailService.prototype.updateMail = function (mail) {
        var _this = this;
        return new Promise(function (resolve, reject) {
            _this._httpClient.post('api/mail-mails/' + mail.id, tslib_1.__assign({}, mail))
                .subscribe(function (response) {
                _this.getMails().then(function (mails) {
                    if (mails && _this.currentMail) {
                        _this.setCurrentMail(_this.currentMail.id);
                    }
                    resolve(mails);
                }, reject);
            });
        });
    };
    MailService = tslib_1.__decorate([
        Injectable(),
        tslib_1.__metadata("design:paramtypes", [HttpClient])
    ], MailService);
    return MailService;
}());
export { MailService };
//# sourceMappingURL=mail.service.js.map