import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

import { MatButtonModule, MatFormFieldModule, MatIconModule, MatInputModule, MatGridListModule, MatToolbarModule, MatTableModule } from '@angular/material';

import { FuseSharedModule } from '@fuse/shared.module';
import { LandingPageComponent } from 'app/main/apps/landing/landing/landing.component';
import { CourseListComponent } from 'app/main/apps/courselist/courselist.component';
import { CourseDetailComponent } from 'app/main/apps/coursedetail/course_detail.component';

import { FuseSidebarModule } from '@fuse/components';
import { TranslateModule } from '@ngx-translate/core';
import { ScrollingModule } from '@angular/cdk/scrolling';

import { CourseListService } from 'app/main/apps/courselist/courselist.service';
import { CourseDetailService } from 'app/main/apps/coursedetail/course_detail.service';
import { LandingService } from 'app/main/apps/landing/landing.service';
import { ReserveFormDialogComponent } from 'app/main/apps/coursedetail/reservation-form/reservation-form.component';
import { ReservationService } from 'app/main/apps/coursedetail/reservation-form/reservation.service';
import { MyCourseListComponent } from 'app/main/apps/mycourselist/mycourselist.component';
import { MyCourseService } from 'app/main/apps/mycourselist/mycourselist.service';
// import { AutocompleteComponent } from '../../common/autocomplete/google-places.component';
import { MatGoogleMapsAutocompleteModule } from '@angular-material-extensions/google-maps-autocomplete';

import { PTDetailComponent } from 'app/main/apps/ptdetail/ptdetail.component';
import { PTDetailService } from 'app/main/apps/ptdetail/ptdetail.service';

import { PTActivityListComponent } from 'app/main/apps/ptactivities/ptactivities.component';
import { PTActivityService } from 'app/main/apps/ptactivities/ptactivities.service';

const routes = [
    {
        path     : 'landing/:id',
        component: LandingPageComponent,
        resolve  : { data: LandingService },
    },
    {
        path     : 'courselist/:lat/:long',
        component: CourseListComponent,
        resolve  : { data: CourseListService },
    },
    {
        path     : 'curcourselist',
        component: CourseListComponent,
        resolve  : { data: CourseListService },
    },
    {
        path     : 'coursedetail/:lat/:long/:id',
        component: CourseDetailComponent,
        resolve  : { data: CourseDetailService },
    },
    {
        path     : 'mycourses',
        component: MyCourseListComponent,
        resolve  : { data: MyCourseService },
    },
    {
        path     : 'ptdetail/:id',
        component: PTDetailComponent,
        resolve  : { data: PTDetailService },
    },
    {
        path     : 'ptactivity/:id',
        component: PTActivityListComponent,
        resolve  : { data: PTActivityService },
    }
];

@NgModule({
    declarations: [
        LandingPageComponent,
        CourseListComponent,
        CourseDetailComponent,
        ReserveFormDialogComponent,
        MyCourseListComponent,
        PTDetailComponent,
        PTActivityListComponent
        // AutocompleteComponent
    ],
    imports : [
        RouterModule.forChild(routes),

        MatButtonModule,
        MatFormFieldModule,
        MatIconModule,
        MatInputModule,
        MatGridListModule,  
        MatToolbarModule,
        MatTableModule,
        // MatSelectModule,
        // MatListModule,
        TranslateModule,

        FuseSharedModule,
        FuseSidebarModule,
        ScrollingModule,
        MatGoogleMapsAutocompleteModule
    ],
    providers   : [ CourseListService, CourseDetailService, LandingService, ReservationService, MyCourseService, PTDetailService, PTActivityService ],
    entryComponents: [ReserveFormDialogComponent]
})
export class LandingModule
{
}
