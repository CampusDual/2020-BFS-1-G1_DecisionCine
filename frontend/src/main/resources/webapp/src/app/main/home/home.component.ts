import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { OGridItemDirective } from 'ontimize-web-ngx/ontimize/components/grid/grid-item/o-grid-item.directive';

@Component({
  selector: 'home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  constructor(
    private router: Router,
    private actRoute: ActivatedRoute
  ) {
  }

  ngOnInit() {
  }

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

  onRedirectToDetail(event: OGridItemDirective) {

    let idDetalle: Number;
    console.log("entrando en: onRedirectToDetail()");
    console.log(event.getItemData());
    console.log(event.getItemData()['contenido_id']);
    idDetalle = event.getItemData()['contenido_id'];
    this.router.navigateByUrl("/main/contenido/" + idDetalle);

  }

}
