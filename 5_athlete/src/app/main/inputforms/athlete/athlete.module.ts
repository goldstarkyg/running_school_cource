import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatStepperModule } from '@angular/material/stepper';
import { MatOptionModule } from '@angular/material/core';
import { MatSelectModule } from '@angular/material/select';
import { MatDatepickerModule } from '@angular/material/datepicker';

import { FuseSharedModule } from '@fuse/shared.module';
import { AthleteFormComponent } from 'app/main/inputforms/athlete/athlete.component';
import { MatGoogleMapsAutocompleteModule } from '@angular-material-extensions/google-maps-autocomplete';

const routes = [
    {
        path     : 'ahtlete',
        component: AthleteFormComponent
    }
];

@NgModule({
    declarations: [
        AthleteFormComponent,
    ],
    imports     : [
        RouterModule.forChild(routes),

        MatButtonModule,
        MatCheckboxModule,
        MatFormFieldModule,
        MatIconModule,
        MatInputModule,
        MatStepperModule,
        MatOptionModule,
        MatSelectModule,
        MatDatepickerModule,
        FuseSharedModule,
        MatGoogleMapsAutocompleteModule
    ],
})
export class UIAthleteFormModule
{
}
