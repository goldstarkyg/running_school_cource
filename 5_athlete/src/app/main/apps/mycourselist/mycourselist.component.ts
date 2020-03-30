import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator, MatTableDataSource } from '@angular/material';

import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { FuseConfirmDialogComponent } from '@fuse/components/confirm-dialog/confirm-dialog.component';

import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';
import { FormControl, FormGroup } from '@angular/forms';
import { MyCourseService } from './mycourselist.service';
import { LocalsessionService } from '../../../services/localsession.service';
import { MatDialog, MatDialogRef } from '@angular/material';
import { fuseAnimations } from '@fuse/animations';
import { takeUntil } from 'rxjs/operators';
import { Subject } from 'rxjs';
import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { isDevMode } from '@angular/core';
import { Router } from '@angular/router';

import { ResultsComponent } from '../../common/results/results.component';
import { Location } from '@angular/common';

import { PaymentFormDialogComponent } from 'app/main/apps/mycourselist/attend/payment-form/payment-form.component';

/**
 * @title Table with pagination
 */

export interface MyCourseListElement {
  id: number;
  course_name: string;
  levels: string;
  from_date: string;
  to_date: string;
  status: string;
  course_content: string;
}

@Component({
  selector: 'mycourse-list',
  templateUrl: './mycourselist.component.html',
  styleUrls: ['./mycourselist.component.scss'],
  animations: fuseAnimations
})

export class MyCourseListComponent implements OnInit {
  model: any = {};
  // courseList: any = [];

  urlHeader = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}`;
  defImageUrl = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}` + '/uploads/trainer/def.png';

  dialogRef: any;
  confirmDialogRef: MatDialogRef<FuseConfirmDialogComponent>;
  paymentDlgRef: MatDialogRef<PaymentFormDialogComponent>;

  displayedColumns: string[] = ['id', 'avatar', 'trainer_name', 'course_name', 'levels', 'seats', 'price', 'status', 'course_content', 'view'];
  dataSource: any;

  private _unsubscribeAll: Subject<any>;

  @ViewChild(MatPaginator) paginator: MatPaginator;

  /**
  * Constructor
  *
  * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
  */
  constructor(
    private _fuseTranslationLoaderService: FuseTranslationLoaderService,
    private _Service: MyCourseService,
    private localsession: LocalsessionService,
    private _matDialog: MatDialog,
    private dialog: MatDialog,
    private router: Router,
    private _location: Location,
  ) {
    this._fuseTranslationLoaderService.loadTranslations(english, italian);
    this._unsubscribeAll = new Subject();
  }

  ngOnInit() {
    this._Service.onCoursesChanged
      .pipe(takeUntil(this._unsubscribeAll))
      .subscribe(data => {
        this.dataSource = new MatTableDataSource<MyCourseListElement>(data);
        this.dataSource.paginator = this.paginator;
      });
  }

  getStatusName(status: number) {
    if (status == 0)
      return "Pending";
    else if (status == 3)
      return "Approved";
    else if (status == 2)
      return "Closed";
    else if (status == 1)
      return "Paid(Attend)";
  }

  getDescriptionBy50(szDesc: string) {
    if (szDesc.length < 50)
      return szDesc;
    else {
      szDesc = szDesc.substring(0, 50);
      szDesc += '...';

      return szDesc;
    }
  }

  getDateOnly(szDate: string) {
    let arrDate = szDate.split(' ');
    return arrDate[0];
  }

  getDashDate(date: any) {
    let dt: Date;
    dt = new Date(date);
    return dt.getFullYear() + '-' + (dt.getMonth() + 1) + '-' + dt.getDate();
  }

  // <div *ngIf="detailInfo.reserved=='-1'" class="title">Course Information <label style="float: right; color: red"> Not Reserved </label></div>
  // <div *ngIf="detailInfo.reserved=='0'" class="title">Course Information <label style="float: right; color: yellow"> Pending </label></div>
  // <div *ngIf="detailInfo.reserved=='3'" class="title">Course Information <label style="float: right; color: blue"> Reserved </label></div>
  // <div *ngIf="detailInfo.reserved=='2'" class="title">Course Information <label style="float: right; color: black"> Closed </label></div>
  // <div *ngIf="detailInfo.reserved=='1'" class="title">Course Information <label style="float: right; color: black"> Running </label></div>
  // <div *ngIf="detailInfo.reserved=='4'" class="title">Course Information <label style="float: right; color: black"> Declined </label></div>

  editCourse(item): void {
    if (item.rstatus == 1) // paid -> attendance list
      this.router.navigate(['/attend/1/' + item.uid + '/' + item.id]);
    else if (item.rstatus == 2) // closed -> summary review 
      this.router.navigate(['/attendsum/2/' + item.trainer_id + '/' + item.id]);
    else if (item.rstatus == 3) // approved -> paid window
      this.showPaymentDialog(item);
    else if (item.rstatus == 0)
      this.showMessage();
  }

  showPaymentDialog(item) {
    this.paymentDlgRef = this._matDialog.open(PaymentFormDialogComponent, {
      panelClass: 'feedback-form-dialog',
      data: { payment: item.price, purchased: 'false', reserve_id:item.rid }
    });

    this.paymentDlgRef.afterClosed()
      .subscribe(response => {
        if (!response)
          return;
        this.paymentDlgRef = null;
      });
  }

  showMessage() {
    const dialogRef = this.dialog.open(ResultsComponent, {
      panelClass: 'transparent',
      data: { title: 'Pending', content: 'Your reservation is still in checking by personal trainer.' },
    });

    dialogRef.afterClosed().subscribe(result => { });
  }

  goBack() {
    this._location.back();
  }
}