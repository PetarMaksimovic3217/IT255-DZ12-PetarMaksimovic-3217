import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
   public isAuth: boolean;
  constructor(private _router: Router) { }

  ngOnInit() {
    if (localStorage.getItem('token')) {
      this.isAuth = true;
    } else {
      this.isAuth = false;
    }
  }
  public logOut() {
     localStorage.removeItem('token');
     localStorage.removeItem('username');
     this.isAuth = false;
     location.reload();
   }
}
