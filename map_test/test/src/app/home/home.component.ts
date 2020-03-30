import { Component, OnInit } from '@angular/core';
import { IPayPalConfig, ICreateOrderRequest } from 'ngx-paypal';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  public payPalConfig?: IPayPalConfig;
  showSuccess: boolean ;
  purchase_units : any[];
  price: number;
  constructor() {
    this.showSuccess = false;
    this.price = 20;
    this.purchase_units =  [
      {
        amount: {
          currency_code: 'EUR',
          value: this.price,
          breakdown: {
            item_total: {
              currency_code: 'EUR',
              value: this.price
            }
          }
        },
        items: [
          {
            name: 'Enterprise Subscription',
            quantity: '1',
            category: 'DIGITAL_GOODS',
            unit_amount: {
              currency_code: 'EUR',
              value: this.price,
            },
          }
        ]
      }
    ];
   }
   
  ngOnInit() {
    this.initConfig();
  }

  ///////////
  private initConfig(): void {
    this.payPalConfig = {
      currency: 'EUR',
      clientId: 'ARrHp5Y3ynKR6SIzUOzHC01m8bfvVcnTscROykqpR8OZ527GOsgTkXZ_qBctudj-khyP5nm404l2P9TO',
      createOrderOnClient: (data) => <ICreateOrderRequest>{
        intent: 'CAPTURE',
        purchase_units:this.purchase_units
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
        this.purchase_units =  [
          {
            amount: {
              currency_code: 'EUR',
              value: this.price,
              breakdown: {
                item_total: {
                  currency_code: 'EUR',
                  value: this.price
                }
              }
            },
            items: [
              {
                name: 'Enterprise Subscription',
                quantity: '1',
                category: 'DIGITAL_GOODS',
                unit_amount: {
                  currency_code: 'EUR',
                  value: this.price,
                },
              }
            ]
          }];
        console.log('onClick', data, actions);
      },
    };
    }
  /////////////

}
