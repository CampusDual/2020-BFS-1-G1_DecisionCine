import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { OListItemDirective, OButtonComponent } from 'ontimize-web-ngx';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.scss']
})
export class MainComponent implements OnInit {
  
  private idDetalle: Number;

  constructor(    
    private router: Router,
    private actRoute: ActivatedRoute) {

  }

  ngOnInit() {}

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

  onRecogerValor(event: OListItemDirective) {
    console.log("entrando en: onRecogerValor()");
    console.log(event.getItemData());
    console.log(event.getItemData()['contenido_id']);
    this.idDetalle = event.getItemData()['contenido_id'];
  }

  onRedirectToDetail(event: OButtonComponent) {
    this.idDetalle = 1;
    console.log("entrando en: onRedirectToDetail()");
    this.router.navigateByUrl("/main/contenido/" + this.idDetalle);
  }

}
