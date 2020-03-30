import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { TranslateModule } from '@ngx-translate/core';

import { FuseSharedModule } from '@fuse/shared.module';
import { PurchaseComponent } from './purchase.component';
import { MatButtonModule, MatDividerModule } from '@angular/material';
import { NgxPayPalModule } from 'ngx-paypal'

const routes = [
    {
        path     : 'purchase',
        component: PurchaseComponent
    }
];

@NgModule({
    declarations: [
        PurchaseComponent
    ],
    imports     : [
        RouterModule.forChild(routes),
        TranslateModule,
        FuseSharedModule,
        
        MatButtonModule,
        MatDividerModule,
        NgxPayPalModule,
    ],
    exports     : [
        PurchaseComponent
    ]
})

export class PurchaseModule
{
}