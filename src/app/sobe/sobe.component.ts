import { Component, OnInit } from '@angular/core';
import { Http, Headers } from '@angular/http';
import { Router } from '@angular/router';
import {SearchPipe} from '../search.pipe';
import {SearchKVPipe} from '../search-kv.pipe';

@Component({
  selector: 'app-sobe',
  templateUrl: './sobe.component.html',
  styleUrls: ['./sobe.component.css'],
  providers: [SearchPipe, SearchKVPipe]

})
export class SobeComponent implements OnInit {
  public sobe: any = [];
  constructor(private _http: Http, private _router: Router) { }

  ngOnInit() {
    const headers = new Headers();
   headers.append('Content-Type', 'application/x-www-form-urlencoded');
   headers.append('token', localStorage.getItem('token'));
   this._http.get('http://localhost/it255/getrooms.php', {headers: headers})
     .subscribe(data => {
         this.sobe = JSON.parse(data['_body']).rooms;
       },
       err => {
         this._router.navigate(['']);
       }
     );
  }

}
