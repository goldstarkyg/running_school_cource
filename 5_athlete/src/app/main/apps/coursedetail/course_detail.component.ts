import { Component, OnDestroy, OnInit, ViewEncapsulation } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

import { fuseAnimations } from '@fuse/animations';
import { CourseDetailService } from 'app/main/apps/coursedetail/course_detail.service';
import { isDevMode } from '@angular/core';
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Location } from '@angular/common';

import { MatDialog, MAT_DIALOG_DATA, MatDialogRef } from '@angular/material';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';
import { LocalsessionService } from 'app/services/localsession.service';
import { Router } from '@angular/router';

import { ReserveFormDialogComponent } from 'app/main/apps/coursedetail/reservation-form/reservation-form.component';

@Component({
    selector     : 'course-detail',
    templateUrl  : './course_detail.component.html',
    styleUrls    : ['./course_detail.component.scss'],
    encapsulation: ViewEncapsulation.None,
    animations   : fuseAnimations
})

export class CourseDetailComponent implements OnInit, OnDestroy
{
    detailInfo: any = {};

    dialogRef: any;
    confirmDialogRef: MatDialogRef<FuseConfirmDialogComponent>;

    urlHeader = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}`;
    defImageUrl = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}` + '/uploads/trainer/def.png';
    defBannerUrl = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}` + '/uploads/schools/no_schban.png';

    // Private
    private _unsubscribeAll: Subject<any>;

    /**
     * Constructor
     *
     * @param {ProfileService} _profileService
     */
    constructor(
        private _matDialog: MatDialog,
        private _profileService: CourseDetailService,
        private _location: Location,
        private _session : LocalsessionService,
        private router: Router
    )
    {
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }

    /**
     * On init
     */
    ngOnInit(): void
    {
        this._profileService.onCourseContentPrepared
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(response => {
                if( response.length > 0 )
                    this.detailInfo = response[0];
            });
    }

    /**
     * On destroy
     */
    ngOnDestroy(): void
    {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    }

    goBack()
    {
      this._location.back();
      // var url = '/apps/school/school/'+ this.globalVars.g_nSchoolID;
      // this.router.navigate([url]);
    }

    onReserve()
    {
        if( this._session.retriveIsAthleteLogin() !== 'true' )
        {
            this.confirmDialogRef = this._matDialog.open(FuseConfirmDialogComponent, {
                disableClose: false
            });
    
            this.confirmDialogRef.componentInstance.confirmMessage = 'You need to do login for reservation. Would you like to do this now?';
            this.confirmDialogRef.afterClosed().subscribe(result => {
                if (result) {
                    this.router.navigate(['auth/login']);
                }
                this.confirmDialogRef = null;
            });    
        }
        else
            this.onShowReserveDialog();
    }

    onShowReserveDialog()
    {
        this.dialogRef = this._matDialog.open(ReserveFormDialogComponent, {
            panelClass: 'reservation-form-dialog',
            data: { }
        });
    }

    viewCourse(item)
    {
        this._profileService.getCourseDetail(item.course_id);
    }

    viewPersonalDetail( trainerID )
    {
        this.router.navigate(['/ptdetail/' + trainerID]);
    }
}
