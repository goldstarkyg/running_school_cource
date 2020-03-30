import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatCheckboxModule, MatDialogModule, MatFormFieldModule, MatIconModule, MatInputModule, MatMenuModule, MatRippleModule, MatSelectModule, MatToolbarModule } from '@angular/material';
import { TranslateModule } from '@ngx-translate/core';
import { FuseSharedModule } from '@fuse/shared.module';
import { FuseSidebarModule } from '@fuse/components';
import { MailService } from 'app/main/mail/mail.service';
import { MailComponent } from 'app/main/mail/mail.component';
import { MailListComponent } from 'app/main/mail/mail-list/mail-list.component';
import { MailListItemComponent } from 'app/main/mail/mail-list/mail-list-item/mail-list-item.component';
import { MailDetailsComponent } from 'app/main/mail/mail-details/mail-details.component';
import { MailMainSidebarComponent } from 'app/main/mail/sidebars/main/main-sidebar.component';
import { MailComposeDialogComponent } from 'app/main/mail/dialogs/compose/compose.component';
var routes = [
    {
        path: 'label/:labelHandle',
        component: MailComponent,
        resolve: {
            mail: MailService
        }
    },
    {
        path: 'label/:labelHandle/:mailId',
        component: MailComponent,
        resolve: {
            mail: MailService
        }
    },
    {
        path: 'filter/:filterHandle',
        component: MailComponent,
        resolve: {
            mail: MailService
        }
    },
    {
        path: 'filter/:filterHandle/:mailId',
        component: MailComponent,
        resolve: {
            mail: MailService
        }
    },
    {
        path: ':folderHandle',
        component: MailComponent,
        resolve: {
            mail: MailService
        }
    },
    {
        path: ':folderHandle/:mailId',
        component: MailComponent,
        resolve: {
            mail: MailService
        }
    },
    {
        path: '**',
        redirectTo: 'inbox'
    }
];
var MailModule = /** @class */ (function () {
    function MailModule() {
    }
    MailModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                MailComponent,
                MailListComponent,
                MailListItemComponent,
                MailDetailsComponent,
                MailMainSidebarComponent,
                MailComposeDialogComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatCheckboxModule,
                MatDialogModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                MatMenuModule,
                MatRippleModule,
                MatSelectModule,
                MatToolbarModule,
                TranslateModule,
                FuseSharedModule,
                FuseSidebarModule
            ],
            providers: [
                MailService
            ],
            entryComponents: [
                MailComposeDialogComponent
            ]
        })
    ], MailModule);
    return MailModule;
}());
export { MailModule };
//# sourceMappingURL=mail.module.js.map