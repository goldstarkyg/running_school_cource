import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatDatepickerModule, MatDialogModule, MatFormFieldModule, MatIconModule, MatInputModule, MatSlideToggleModule, MatToolbarModule, MatTooltipModule } from '@angular/material';
import { ColorPickerModule } from 'ngx-color-picker';
import { CalendarModule as AngularCalendarModule, DateAdapter } from 'angular-calendar';
import { adapterFactory } from 'angular-calendar/date-adapters/date-fns';
import { FuseSharedModule } from '@fuse/shared.module';
import { FuseConfirmDialogModule } from '@fuse/components';
import { CalendarComponent } from 'app/main/calendar/calendar.component';
import { CalendarService } from 'app/main/calendar/calendar.service';
import { CalendarEventFormDialogComponent } from 'app/main/calendar/event-form/event-form.component';
var routes = [
    {
        path: 'calendar',
        component: CalendarComponent,
        children: [],
        resolve: {
            chat: CalendarService
        }
    }
];
var CalendarModule = /** @class */ (function () {
    function CalendarModule() {
    }
    CalendarModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                CalendarComponent,
                CalendarEventFormDialogComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatDatepickerModule,
                MatDialogModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                MatSlideToggleModule,
                MatToolbarModule,
                MatTooltipModule,
                AngularCalendarModule.forRoot({
                    provide: DateAdapter,
                    useFactory: adapterFactory
                }),
                ColorPickerModule,
                FuseSharedModule,
                FuseConfirmDialogModule
            ],
            providers: [
                CalendarService
            ],
            entryComponents: [
                CalendarEventFormDialogComponent
            ]
        })
    ], CalendarModule);
    return CalendarModule;
}());
export { CalendarModule };
//# sourceMappingURL=calendar.module.js.map