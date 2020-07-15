import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { OListItemDirective, OButtonComponent } from 'ontimize-web-ngx';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.scss']
})
export class MainComponent implements OnInit {

  constructor(    
    private router: Router,
    private actRoute: ActivatedRoute) {

  }

  ngOnInit() {}

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

  onRecogerValor($eventResult) {
    console.log("entrando en: onRecogerValor()");
    console.log(event);
    this.router.navigate(["/main/contenido/" + $eventResult.newValue],);
    
  }

  /*
  onRedirectToDetail(event: OButtonComponent) {
    console.log("entrando en: onRedirectToDetail()");
    this.router.navigateByUrl("/main/contenido/" + event());
  }

*/



}
