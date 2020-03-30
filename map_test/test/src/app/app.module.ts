import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ContactCreateComponent } from './contact-create/contact-create.component';
import { ContactListComponent } from './contact-list/contact-list.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { HomeComponent } from './home/home.component';

import { AgmCoreModule } from '@agm/core';
import { NgxPayPalModule } from 'ngx-paypal'

@NgModule({
  declarations: [
    AppComponent,
    ContactCreateComponent,
    ContactListComponent,
    HeaderComponent,
    FooterComponent,
    HomeComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    NgxPayPalModule,
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyBrENLDDulM9wpnEfI8B80kgr8VHg9sDHY'
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
