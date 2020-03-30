import { Component, ViewEncapsulation , OnInit } from '@angular/core';
import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';

import { locale as english } from './i18n/en';
import { locale as italian } from './i18n/it';

import { LocalsessionService } from '../../services/localsession.service';
import { PurchaseService } from './purchase.service';

import { MatDialog, MatDialogRef } from '@angular/material/dialog';
import { LoadingComponent } from '../common/loading/loading.component';
import { ResultsComponent } from '../common/results/results.component';
import { IPayPalConfig, ICreateOrderRequest } from 'ngx-paypal';
import { GlobalService } from 'app/services/global.service';
import { AngularWaitBarrier } from 'blocking-proxy/built/lib/angular_wait_barrier';

@Component({
    selector: 'purchase',
    templateUrl: './purchase.component.html',
    styleUrls: ['./purchase.component.scss'],
    encapsulation: ViewEncapsulation.None
})
export class PurchaseComponent implements OnInit {
    /**
    * Constructor
    *
    * @param {FuseTranslationLoaderService} _fuseTranslationLoaderService
    */
    retResult: String;

    model: any = {};
    packageList: any[] = [];
    purchased : string = 'false';
    currency : string;
    currency_unit : string ;
    clientId : string;

    spinnerDlg: MatDialogRef<LoadingComponent>;

    showSuccess: boolean ;
    purchase_units : any[];
    price: number = 0;

    public payPalConfig?: IPayPalConfig;

    constructor(
        private dialog: MatDialog,
        private _fuseTranslationLoaderService: FuseTranslationLoaderService,
        private purchaseService: PurchaseService,
        private localsession: LocalsessionService,
        private _global: GlobalService ,
        
    ) {
        this._fuseTranslationLoaderService.loadTranslations(english, italian);
        this.showSuccess = false;
    }

    ngOnInit() { 
        this.model['token'] = this.localsession.retrieveToken();
        this.model['user_id'] = this.localsession.retrieveUserID();
        
        this.purchased = this.localsession.retrievePurchased();
        let user_id = this.localsession.retrieveUserID();
        
        this.purchaseService.getPackageList(this.model).subscribe( 
            (data: any) => { 
                this.packageList = data;             
                data.forEach((line, index) => {
                   this.price +=line.price;     
                });                
            },error => {});

        this.purchaseService.confirmPurchase(this.model, user_id).subscribe( 
            (data: any) => { 
                if ( data['status'] === 0 )
                    this.purchased = 'false';
                else if ( data['status'] === 1 && data['code'] === 200 )
                    this.purchased = 'true';

                this.localsession.savePurchased(this.purchased);
            },error => {});

        this._global.getPayInform(this.model).subscribe( 
            (data: any) => {
                    this.currency = data['currency'];
                    this.clientId = data['client_id'];
                    this.currency_unit = data['unit'];
                    this.initConfig();   
            },error => {}
        );
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
                    value: this.price.toString(),
                    breakdown: {
                        item_total: {
                            currency_code: this.currency,
                            value: this.price.toString()
                        }
                    }
                },
                items: [{
                    name: 'Buy Package',
                    quantity: '1',
                    category: 'DIGITAL_GOODS',
                    unit_amount: {
                        currency_code: this.currency,
                        value: this.price.toString(),
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
              this.BuyPackage();
              this.BuyPackageDetail(details);
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

    showSpinner() {
        this.spinnerDlg = this.dialog.open(LoadingComponent, { panelClass: 'transparent', disableClose: true });
    }

    hideSpinner() {
        this.spinnerDlg.close();
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

    ShowAlreadyBuy()
    {
        this.retResult = "You have already purchased this package.";
        this.showSuccessMessage();
    }

    BuyPackage() {
        let user_id = this.localsession.retrieveUserID();

        this.model['user_id'] = this.localsession.retrieveUserID();
        this.model['token'] = this.localsession.retrieveToken();
        this.model['package_id'] = '1';
        this.model['pay_amount'] = this.price;
        this.model['pay_status'] = '1';

        //this.showSpinner();
        this.purchaseService.buyPackage(this.model, user_id).subscribe( 
            (data: any) => 
            {
              //  this.hideSpinner();

                let code = data['code'];
                let msg  = data['msg'];

                if( code == '200' && msg == "Completed successfully!")
                {
                    this.retResult = "Successfully Purchased."
                    this.showSuccessMessage();

                    this.purchased = 'true';
                    this.localsession.savePurchased(this.purchased);
                }
            }
            ,error => {
                this.retResult = "Operation not completed."
                //this.showSuccessMessage();
            });
    }

    BuyPackageDetail(details) {
        let user_id = this.localsession.retrieveUserID();

        this.model['user_id']   = this.localsession.retrieveUserID();
        this.model['token']     = this.localsession.retrieveToken();
        this.model['package_id'] = '1';
        this.model['pay_amount'] = this.price;
        this.model['details']   = details;
        this.model['currency']  = this.currency;
        
        this.showSpinner();
        this.purchaseService.buyPackageDetail(this.model, user_id).subscribe( 
            (data: any) => 
            {
                this.hideSpinner();

                let code = data['code'];
                let msg  = data['msg'];

                if( code == '200' && msg == "Completed successfully!")
                {
                    this.retResult = "Successfully Purchased."                   
                }
            }
            ,error => {
                this.retResult = "Operation not completed."                
            });
    }
}
