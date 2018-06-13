import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Headers } from '@angular/http';
import { Router } from '@angular/router';
import { locateHostElement } from '@angular/core/src/render3/instructions';

@Component({
  selector: 'app-dodaj-tip-sobe',
  templateUrl: './dodaj-tip-sobe.component.html',
  styleUrls: ['./dodaj-tip-sobe.component.css']
})
export class DodajTipSobeComponent implements OnInit {

    public addRoomTypeForm = new FormGroup({
      name: new FormControl()
    });
  constructor(private _http: Http, private _router: Router) { }

  ngOnInit() {
    if (localStorage.getItem('token') == null) {
     this._router.navigateByUrl('');
   }
  }
  addRoomType() {
    const data = 'name=' + this.addRoomTypeForm.value.name;
    const headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append('token', localStorage.getItem('token'));

    this._http.post('http://localhost/it255/addroomtype.php', data, { headers: headers}).subscribe((result) => {
      alert("Uspešno unet tip sobe!")
      this._router.navigateByUrl('dodaj_sobu');
   },
    err => {
      const obj = JSON.parse(err._body);
      const element  = <HTMLElement> document.getElementsByClassName('alert')[0];
      element.style.display = 'block';
      element.innerHTML = obj.error.split('\\r\\n').join('<br/>').split('\"').join('');
    }
  );

  }
}
