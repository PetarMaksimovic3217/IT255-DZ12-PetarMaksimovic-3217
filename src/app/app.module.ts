import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';



import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { AboutusComponent } from './aboutus/aboutus.component';
import { FooterComponent } from './footer/footer.component';
import { DodajSobuComponent } from './dodaj-sobu/dodaj-sobu.component';
import { DodajTipSobeComponent } from './dodaj-tip-sobe/dodaj-tip-sobe.component';
import { SobeComponent } from './sobe/sobe.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { SearchPipe } from './search.pipe';
import { SearchKVPipe } from './search-kv.pipe';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    LoginComponent,
    RegisterComponent,
    AboutusComponent,
    FooterComponent,
    DodajSobuComponent,
    DodajTipSobeComponent,
    SobeComponent,
    SearchPipe,
    SearchKVPipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
   ReactiveFormsModule,
   HttpModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
