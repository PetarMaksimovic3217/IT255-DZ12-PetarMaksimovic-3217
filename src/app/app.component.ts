import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  template: ' <app-header></app-header> <router-outlet></router-outlet><app-footer></app-footer>',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{


  title = 'MetHotel';

 constructor() {

 }

 public ngOnInit() {
  

 }


}
