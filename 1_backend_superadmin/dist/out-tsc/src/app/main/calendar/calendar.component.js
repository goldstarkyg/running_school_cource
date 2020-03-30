import * as tslib_1 from "tslib";
import { Component, ViewEncapsulation } from '@angular/core';
import { MatDialog } from '@angular/material';
import { Subject } from 'rxjs';
import { startOfDay, isSameDay, isSameMonth } from 'date-fns';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { fuseAnimations } from '@fuse/animations';
import { CalendarService } from 'app/main/calendar/calendar.service';
import { CalendarEventModel } from 'app/main/calendar/event.model';
import { CalendarEventFormDialogComponent } from 'app/main/calendar/event-form/event-form.component';
var CalendarComponent = /** @class */ (function () {
    function CalendarComponent(_matDialog, _calendarService) {
        var _this = this;
        this._matDialog = _matDialog;
        this._calendarService = _calendarService;
        this.refresh = new Subject();
        // Set the defaults
        this.view = 'month';
        this.viewDate = new Date();
        this.activeDayIsOpen = true;
        this.selectedDay = { date: startOfDay(new Date()) };
        this.actions = [
            {
                label: '<i class="material-icons s-16">edit</i>',
                onClick: function (_a) {
                    var event = _a.event;
                    _this.editEvent('edit', event);
                }
            },
            {
                label: '<i class="material-icons s-16">delete</i>',
                onClick: function (_a) {
                    var event = _a.event;
                    _this.deleteEvent(event);
                }
            }
        ];
        /**
         * Get events from service/server
         */
        this.setEvents();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    CalendarComponent.prototype.ngOnInit = function () {
        var _this = this;
        /**
         * Watch re-render-refresh for updating db
         */
        this.refresh.subscribe(function (updateDB) {
            if (updateDB) {
                _this._calendarService.updateEvents(_this.events);
            }
        });
        this._calendarService.onEventsUpdated.subscribe(function (events) {
            _this.setEvents();
            _this.refresh.next();
        });
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Set events
     */
    CalendarComponent.prototype.setEvents = function () {
        var _this = this;
        this.events = this._calendarService.events.map(function (item) {
            item.actions = _this.actions;
            return new CalendarEventModel(item);
        });
    };
    /**
     * Before View Renderer
     *
     * @param {any} header
     * @param {any} body
     */
    CalendarComponent.prototype.beforeMonthViewRender = function (_a) {
        var _this = this;
        var header = _a.header, body = _a.body;
        /**
         * Get the selected day
         */
        var _selectedDay = body.find(function (_day) {
            return _day.date.getTime() === _this.selectedDay.date.getTime();
        });
        if (_selectedDay) {
            /**
             * Set selected day style
             * @type {string}
             */
            _selectedDay.cssClass = 'cal-selected';
        }
    };
    /**
     * Day clicked
     *
     * @param {MonthViewDay} day
     */
    CalendarComponent.prototype.dayClicked = function (day) {
        var date = day.date;
        var events = day.events;
        if (isSameMonth(date, this.viewDate)) {
            if ((isSameDay(this.viewDate, date) && this.activeDayIsOpen === true) || events.length === 0) {
                this.activeDayIsOpen = false;
            }
            else {
                this.activeDayIsOpen = true;
                this.viewDate = date;
            }
        }
        this.selectedDay = day;
        this.refresh.next();
    };
    /**
     * Event times changed
     * Event dropped or resized
     *
     * @param {CalendarEvent} event
     * @param {Date} newStart
     * @param {Date} newEnd
     */
    CalendarComponent.prototype.eventTimesChanged = function (_a) {
        var event = _a.event, newStart = _a.newStart, newEnd = _a.newEnd;
        event.start = newStart;
        event.end = newEnd;
        // console.warn('Dropped or resized', event);
        this.refresh.next(true);
    };
    /**
     * Delete Event
     *
     * @param event
     */
    CalendarComponent.prototype.deleteEvent = function (event) {
        var _this = this;
        this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
            disableClose: false
        });
        this.confirmDialogRef.componentInstance.confirmMessage = 'Are you sure you want to delete?';
        this.confirmDialogRef.afterClosed().subscribe(function (result) {
            if (result) {
                var eventIndex = _this.events.indexOf(event);
                _this.events.splice(eventIndex, 1);
                _this.refresh.next(true);
            }
            _this.confirmDialogRef = null;
        });
    };
    /**
     * Edit Event
     *
     * @param {string} action
     * @param {CalendarEvent} event
     */
    CalendarComponent.prototype.editEvent = function (action, event) {
        var _this = this;
        var eventIndex = this.events.indexOf(event);
        this.dialogRef = this._matDialog.open(CalendarEventFormDialogComponent, {
            panelClass: 'event-form-dialog',
            data: {
                event: event,
                action: action
            }
        });
        this.dialogRef.afterClosed()
            .subscribe(function (response) {
            if (!response) {
                return;
            }
            var actionType = response[0];
            var formData = response[1];
            switch (actionType) {
                /**
                 * Save
                 */
                case 'save':
                    _this.events[eventIndex] = Object.assign(_this.events[eventIndex], formData.getRawValue());
                    _this.refresh.next(true);
                    break;
                /**
                 * Delete
                 */
                case 'delete':
                    _this.deleteEvent(event);
                    break;
            }
        });
    };
    /**
     * Add Event
     */
    CalendarComponent.prototype.addEvent = function () {
        var _this = this;
        this.dialogRef = this._matDialog.open(CalendarEventFormDialogComponent, {
            panelClass: 'event-form-dialog',
            data: {
                action: 'new',
                date: this.selectedDay.date
            }
        });
        this.dialogRef.afterClosed()
            .subscribe(function (response) {
            if (!response) {
                return;
            }
            var newEvent = response.getRawValue();
            newEvent.actions = _this.actions;
            _this.events.push(newEvent);
            _this.refresh.next(true);
        });
    };
    CalendarComponent = tslib_1.__decorate([
        Component({
            selector: 'calendar',
            templateUrl: './calendar.component.html',
            styleUrls: ['./calendar.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [MatDialog,
            CalendarService])
    ], CalendarComponent);
    return CalendarComponent;
}());
export { CalendarComponent };
//# sourceMappingURL=calendar.component.js.map