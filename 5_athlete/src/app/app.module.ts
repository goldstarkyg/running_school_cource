import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule, Routes } from '@angular/router';
import { MatMomentDateModule } from '@angular/material-moment-adapter';
import { MatButtonModule, MatIconModule } from '@angular/material';
import { TranslateModule } from '@ngx-translate/core';
import 'hammerjs';

import { FuseModule } from '@fuse/fuse.module';
import { FuseSharedModule } from '@fuse/shared.module';
import { FuseProgressBarModule, FuseSidebarModule, FuseThemeOptionsModule } from '@fuse/components';

import { fuseConfig } from 'app/fuse-config';
import { AppComponent } from 'app/app.component';
import { LayoutModule } from 'app/layout/layout.module';
// import { SampleModule } from 'app/main/sample/sample.module';

import { LandingModule } from 'app/main/apps/landing/landing.module';
import { PagesModule } from 'app/main/main.module';

import { EventEmitterService } from 'app/services/event-emitter.service';
import { FuseConfirmDialogModule } from '@fuse/components/confirm-dialog/confirm-dialog.module';
import { AttendModule } from 'app/main/apps/mycourselist/attend/attend.module';

import { AgmCoreModule } from '@agm/core';
import { MatGoogleMapsAutocompleteModule } from '@angular-material-extensions/google-maps-autocomplete';

import { NgxPayPalModule } from 'ngx-paypal';

const appRoutes: Routes = [
    {
        path: '**',
        redirectTo: 'landing/0'
    }
];

@NgModule({
    declarations: [
        AppComponent,
    ],
    imports: [
        AgmCoreModule.forRoot({
            apiKey: 'AIzaSyAgD9T0CLu_fD7xpx4SG-IUQVg2bferaRI'
          }),
        MatGoogleMapsAutocompleteModule.forRoot(),

        BrowserModule,
        BrowserAnimationsModule,
        HttpClientModule,
        RouterModule.forRoot(appRoutes),

        TranslateModule.forRoot(),
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
        FuseConfirmDialogModule,

        // App modules
        LayoutModule,
        LandingModule,
        PagesModule,
        AttendModule,
        NgxPayPalModule,
        // SampleModule
    ],
    bootstrap: [
        AppComponent
    ],
    providers:[EventEmitterService]

})
export class AppModule {
}
