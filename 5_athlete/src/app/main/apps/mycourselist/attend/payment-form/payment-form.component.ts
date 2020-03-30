import { Component, Inject, ViewEncapsulation } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { IPayPalConfig, ICreateOrderRequest } from 'ngx-paypal';
import { GlobalService } from 'app/services/global.service';
import { LocalsessionService } from '../../../../../services/localsession.service';
import { MatDialog } from '@angular/material/dialog';
import { ResultsComponent } from '../../../../common/results/results.component';
import { MyCourseService } from 'app/main/apps/mycourselist/mycourselist.service';

@Component({
    selector     : 'payment-form-dialog',
    templateUrl  : './payment-form.component.html',
    styleUrls    : ['./payment-form.component.scss'],
    encapsulation: ViewEncapsulation.None
})

export class PaymentFormDialogComponent
{
    showSuccess: boolean ;
    retResult: String;

    eventForm: FormGroup;
    dialogTitle: string;

    payment : string;
    reserve_id : string;
    purchased : string = 'false';

    currency : string;
    currency_unit : string ;
    clientId : string;

    model : any = {};

    public payPalConfig?: IPayPalConfig;

    /**
     * Constructor
     *
     * @param {MatDialogRef<CalendarEventFormDialogComponent>} matDialogRef
     * @param _data
     * @param {FormBuilder} _formBuilder
     */
    constructor(
        private dialog: MatDialog,
        public matDialogRef: MatDialogRef<PaymentFormDialogComponent>,
        @Inject(MAT_DIALOG_DATA) private _data: any,
        private _global: GlobalService ,
        private localsession: LocalsessionService,
        private _courseService : MyCourseService
    )
    {
        this.showSuccess = false;

        this.payment    = _data.payment;
        this.purchased  = _data.purchased;
        this.reserve_id = _data.reserve_id;

        this.dialogTitle = 'Payment';
        this.eventForm = this.createEventForm();
        
        this.model['token'] = this.localsession.retrieveToken();
        this.model['user_id'] = this.localsession.retrieveUserID();

        this._global.getPayInform(this.model).subscribe( 
            (data: any) => {
                    this.currency = data['currency'];
                    this.clientId = data['client_id'];
                    this.currency_unit = data['unit'];
                    this.initConfig();   
            },error => {}
        );
    }
    
    showSuccessMessage() {
        // confirmDialogRef: MatDialogRef<FuseConfirmDialogComponent>;
        const dialogRef = this.dialog.open(ResultsComponent, {
            panelClass: 'transparent',
            data: { title: 'Purchase a package', content: this.retResult },
        });

        dialogRef.afterClosed().subscribe(result => {
        });
    }

    createEventForm(): FormGroup
    {
        return new FormGroup({
            payment : new FormControl(this.payment),
        });
    }

    //checkout event for paypal
    private initConfig(): void {
        this.payPalConfig = {
          currency: this.currency,
          clientId: this.clientId,
          createOrderOnClient: (data) => <ICreateOrderRequest>{
            intent: 'CAPTURE',
            purchase_units: [{
                amount: {
                    currency_code: this.currency,
                    value: this.payment.toString(),
                    breakdown: {
                        item_total: {
                            currency_code: this.currency,
                            value: this.payment.toString()
                        }
                    }
                },
                items: [{
                    name: 'Buy Package',
                    quantity: '1',
                    category: 'DIGITAL_GOODS',
                    unit_amount: {
                        currency_code: this.currency,
                        value: this.payment.toString(),
                    },
                }]
            }]
          },
          advanced: {
            commit: 'true'
          },
          style: {
            label: 'paypal',
            layout: 'vertical'
          },
          onApprove: (data, actions) => {
            console.log('onApprove - transaction was approved, but not authorized', data, actions);
            actions.order.get().then(details => {
              console.log('onApprove - you can get full order details inside onApprove: ', details);
              this.NotifyPaidToPersonalTrainer(details); // if operation succeed, then tell personal trainer that he has paid for this course.
            });
          },
          onClientAuthorization: (data) => {
            console.log('onClientAuthorization - you should probably inform your server about completed transaction at this point', data);
            this.showSuccess = true;
          },
          onCancel: (data, actions) => {
            console.log('OnCancel', data, actions);
          },
          onError: err => {
            console.log('OnError', err);
          },
          onClick: (data, actions) => {                      
                console.log('onClick', data, actions);
          },
        };
    }
    //end checkout function

    NotifyPaidToPersonalTrainer(details) {
        let user_id = this.localsession.retrieveUserID();
        this.model['user_id'] = this.localsession.retrieveUserID();
        this.model['token'] = this.localsession.retrieveToken();       
        this.model['reservation_id'] = this.reserve_id; //please insert reservation id

        //change status
        this._global.changePayStatus(this.model).subscribe( 
            (data: any) => 
            {
                let code = data['code'];
                let msg  = data['msg'];

                if( code == '200' && msg == "Completed successfully!")
                {
                    this.retResult = "Successfully Purchased." ;
                    this._courseService.getMyCourses();
                }
            }
            ,error => {
                this.retResult = "Operation not completed.";
            });

          
            this.model['pay_amount'] = this.payment;
            this.model['details']   = details;
            this.model['currency']  = this.currency;
        
                //save pay history
            this._global.savePayHistory(this.model).subscribe( 
                    (data: any) => 
                    {
                        let code = data['code'];
                        let msg  = data['msg'];

                        if( code == '200' && msg == "Completed successfully!")
                        {
                            this.retResult = "Successfully Purchased." ;
                        }
                    }
                    ,error => {
                        this.retResult = "Operation not completed.";
                    });           
    }
}
