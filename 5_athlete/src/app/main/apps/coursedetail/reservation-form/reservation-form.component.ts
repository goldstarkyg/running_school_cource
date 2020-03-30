import { Component, Inject, ViewEncapsulation } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';
import { CalendarEvent } from 'angular-calendar';
import { LoadingComponent } from '../../../common/loading/loading.component';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';

import { ReservationService } from 'app/main/apps/coursedetail/reservation-form/reservation.service';
import { ResultsComponent } from '../../../common/results/results.component';

import { LocalsessionService } from 'app/services/localsession.service';
import { CourseDetailService } from 'app/main/apps/coursedetail/course_detail.service';

// CourseDetailService;
@Component({
    selector: 'reservation-form-dialog',
    templateUrl: './reservation-form.component.html',
    styleUrls: ['./reservation-form.component.scss'],
    encapsulation: ViewEncapsulation.None
})

export class ReserveFormDialogComponent {
    public action: string;
    
    public retResult: String;
    public title: String;
    
    public reserveForm: FormGroup;
    public dialogTitle: string;
    public uploadfilename: string = '';
    public uploadfile: File;
    public spinnerDlg: MatDialogRef<LoadingComponent>;
    public model: any = {};

    /**
     * Constructor
     *
     * @param {MatDialogRef<CalendarEventFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    constructor(
        public matDialogRef: MatDialogRef<ReserveFormDialogComponent>,
        private dialog: MatDialog,
        @Inject(MAT_DIALOG_DATA) private _data: any,
        private _formBuilder: FormBuilder,
        private _Service : ReservationService,
        private _localSession : LocalsessionService,
        private _detailService : CourseDetailService
    ) {
        this.dialogTitle = 'Reservation';
        this.reserveForm = this.createEventForm();
    }

    /**
     * Create the event form
     *
     * @returns {FormGroup}
     */
    createEventForm(): FormGroup {
        return new FormGroup({
            bio: new FormControl(''),
        });
    }

    //---------------------------
    uploadFile(event) {
        if ( event.length < 1 )
            return;

            const element = event[0];
        this.uploadfilename = element.name;
        this.uploadfile = <File>event[0];
    }

    deleteAttachment() {
        this.uploadfilename = '';
        this.uploadfile = null;
    }
    //---------------------------

    showSpinner() {
        this.spinnerDlg = this.dialog.open(LoadingComponent, { panelClass: 'transparent', disableClose: true });
    }

    hideSpinner() {
        this.spinnerDlg.close();
    }

    showMessage() {
        const dialogRef = this.dialog.open(ResultsComponent, {
            panelClass: 'transparent',
            data: { title: this.title, content: this.retResult },
        });

        dialogRef.afterClosed().subscribe(result => { });
    }

    // trigger when user clicked on register button
    sendRegister() {

        this.model['user_id'] = this._localSession.retrieveUserID();
        this.model['token'] = this._localSession.retrieveToken();
        this.model['school_course_id'] = this._detailService.course_id;

        if (this.uploadfilename.length)
            this.model['request_file'] = this.uploadfile;
        else
        {
            this.retResult  = 'Please choose your health information file!';
            this.title      = 'Health Information Required';

            this.showMessage();
            return;
        }

        this.showSpinner();
        this._Service.sendReservation(this.model).subscribe(
            (data: any) => {
                /** spinner ends */
                this.hideSpinner();
                this.retResult = data['msg'];
                this.title = 'Reservation';

                let retCode = data['code'];
                this.showMessage();

                if (retCode == 200) {

                    return this._detailService.getCourseDetail(this._detailService.course_id);
                    // this.router.navigate(['/']);

                    // let jsonSchool = data['school'];
                    // this.localsessionService.saveSchoolID(jsonSchool['id']);
                    // this.localsessionService.saveLogicStage('school_registered');
                    // this.globalService._gRegisterMode = 1;
                    // this.router.navigate(['/register']);
                    // this.router.navigate(['forms/technical']);
                }
            },
            error => {
                /** spinner ends */
                // this.spinner.hide();
                this.hideSpinner();
                this.retResult = 'Operation Failed due to server down or something else.'
            });

        this.matDialogRef.close(this.reserveForm);
    }
}
