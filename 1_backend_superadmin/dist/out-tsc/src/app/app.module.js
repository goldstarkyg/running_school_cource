import * as tslib_1 from "tslib";
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
// import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule } from '@angular/router';
import { MatMomentDateModule } from '@angular/material-moment-adapter';
import { MatButtonModule, MatIconModule } from '@angular/material';
// import { InMemoryWebApiModule } from 'angular-in-memory-web-api';
import { TranslateModule } from '@ngx-translate/core';
import 'hammerjs';
import { FuseModule } from '@fuse/fuse.module';
import { FuseSharedModule } from '@fuse/shared.module';
import { FuseProgressBarModule, FuseSidebarModule, FuseThemeOptionsModule } from '@fuse/components';
import { fuseConfig } from 'app/fuse-config';
import { NgxSpinnerModule } from 'ngx-spinner';
import { AppComponent } from 'app/app.component';
import { LayoutModule } from 'app/layout/layout.module';
import { DashboardModule } from 'app/main/dashboard/dashboard.module';
import { CalendarModule } from 'app/main/calendar/calendar.module';
import { ContactsModule } from 'app/main/contacts/contacts.module';
import { GroupModule } from 'app/main/membergroup/grouplist.module';
import { SessionService } from './services/session.service';
import { HttpsRequestInterceptor } from './services/http.request.interceptor';
import { LoadingComponent } from 'app/main/common/loading/loading.component';
import { ResultsComponent } from 'app/main/common/results/results.component';
// import { TrainersModule } from 'app/main/trainers/trainers.module';
// import { EcommerceModule } from 'app/main/school/e-commerce.module';
var appRoutes = [
    {
        path: 'apps',
        loadChildren: './main/apps.module#AppsModule'
    },
    {
        path: '**',
        redirectTo: 'grouplist'
    }
];
var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                AppComponent, LoadingComponent, ResultsComponent,
            ],
            entryComponents: [LoadingComponent, ResultsComponent],
            imports: [
                BrowserModule,
                BrowserAnimationsModule,
                HttpClientModule,
                RouterModule.forRoot(appRoutes),
                NgxSpinnerModule,
                TranslateModule.forRoot(),
                // InMemoryWebApiModule.forRoot(FakeDbService, {
                //     delay             : 0,
                //     passThruUnknownUrl: true
                // }),
                // Material moment date module
                MatMomentDateModule,
                // Material
                MatButtonModule,
                MatIconModule,
                // Fuse modules
                FuseModule.forRoot(fuseConfig),
                FuseProgressBarModule,
                FuseSharedModule,
                FuseSidebarModule,
                FuseThemeOptionsModule,
                // App modules
                LayoutModule,
                DashboardModule,
                CalendarModule,
                ContactsModule,
                GroupModule,
            ],
            exports: [NgxSpinnerModule],
            bootstrap: [
                AppComponent
            ],
            schemas: [CUSTOM_ELEMENTS_SCHEMA],
            providers: [
                SessionService,
                {
                    provide: HTTP_INTERCEPTORS,
                    useClass: HttpsRequestInterceptor,
                    multi: true,
                }
            ],
        })
    ], AppModule);
    return AppModule;
}());
export { AppModule };
//# sourceMappingURL=app.module.js.map