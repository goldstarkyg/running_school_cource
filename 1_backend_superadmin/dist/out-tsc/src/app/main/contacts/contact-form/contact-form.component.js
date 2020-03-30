import * as tslib_1 from "tslib";
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, Inject, ViewEncapsulation, isDevMode } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';
import { Contact } from 'app/main/contacts/contact.model';
var ContactsContactFormDialogComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {MatDialogRef<ContactsContactFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    function ContactsContactFormDialogComponent(matDialogRef, _data, _formBuilder) {
        this.matDialogRef = matDialogRef;
        this._data = _data;
        this._formBuilder = _formBuilder;
        this.urlHeader = "" + (isDevMode() && env.basePageUrl || envProd.basePageUrl);
        // Set the defaults
        this.action = _data.action;
        if (this.action === 'edit') {
            this.dialogTitle = 'View Contact';
            this.contact = _data.contact;
        }
        else {
            this.dialogTitle = 'New Contact';
            this.contact = new Contact({});
        }
        this.contactForm = this.createContactForm();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Create contact form
     *
     * @returns {FormGroup}
     */
    ContactsContactFormDialogComponent.prototype.createContactForm = function () {
        var roleName = "School Administrator";
        if (this.contact.role == 2)
            roleName = "Technical Manager";
        else if (this.contact.role == 3)
            roleName = "Personal Trainer";
        else if (this.contact.role == 4)
            roleName = "Athlete";
        return this._formBuilder.group({
            id: [this.contact.id],
            name: [this.contact.first_name],
            lastName: [this.contact.last_name],
            avatar: [this.urlHeader + this.contact.pic],
            nickname: [""],
            // role    : [this.contact.role],
            role: [roleName],
            company: [""],
            comment: [this.contact.comment],
            email: [this.contact.email],
            phone: [this.contact.phone],
            // address : [this.contact.address],
            birthday: [this.contact.birthday],
            notes: [""]
        });
    };
    ContactsContactFormDialogComponent = tslib_1.__decorate([
        Component({
            selector: 'contacts-contact-form-dialog',
            templateUrl: './contact-form.component.html',
            styleUrls: ['./contact-form.component.scss'],
            encapsulation: ViewEncapsulation.None
        }),
        tslib_1.__param(1, Inject(MAT_DIALOG_DATA)),
        tslib_1.__metadata("design:paramtypes", [MatDialogRef, Object, FormBuilder])
    ], ContactsContactFormDialogComponent);
    return ContactsContactFormDialogComponent;
}());
export { ContactsContactFormDialogComponent };
//# sourceMappingURL=contact-form.component.js.map