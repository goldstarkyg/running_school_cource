import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatCheckboxModule, MatDatepickerModule, MatFormFieldModule, MatIconModule, MatInputModule, MatMenuModule, MatRippleModule, MatTableModule, MatToolbarModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { FuseConfirmDialogModule, FuseSidebarModule } from '@fuse/components';
import { ContactsComponent } from 'app/main/contacts/contacts.component';
import { ContactsService } from 'app/main/contacts/contacts.service';
import { ContactsContactListComponent } from 'app/main/contacts/contact-list/contact-list.component';
import { ContactsSelectedBarComponent } from 'app/main/contacts/selected-bar/selected-bar.component';
import { ContactsMainSidebarComponent } from 'app/main/contacts/sidebars/main/main.component';
import { ContactsContactFormDialogComponent } from 'app/main/contacts/contact-form/contact-form.component';
import { TranslateModule } from '@ngx-translate/core';
var routes = [
    {
        path: 'contactus',
        component: ContactsComponent,
        resolve: {
            contacts: ContactsService
        }
    }
];
var ContactsModule = /** @class */ (function () {
    function ContactsModule() {
    }
    ContactsModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                ContactsComponent,
                ContactsContactListComponent,
                ContactsSelectedBarComponent,
                ContactsMainSidebarComponent,
                ContactsContactFormDialogComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatCheckboxModule,
                MatDatepickerModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                MatMenuModule,
                MatRippleModule,
                MatTableModule,
                MatToolbarModule,
                TranslateModule,
                FuseSharedModule,
                FuseConfirmDialogModule,
                FuseSidebarModule
            ],
            providers: [
                ContactsService
            ],
            entryComponents: [
                ContactsContactFormDialogComponent
            ]
        })
    ], ContactsModule);
    return ContactsModule;
}());
export { ContactsModule };
//# sourceMappingURL=contacts.module.js.map