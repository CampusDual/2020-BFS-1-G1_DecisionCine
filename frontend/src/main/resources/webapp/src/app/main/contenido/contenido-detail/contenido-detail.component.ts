import { Component, OnInit, ViewChild } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { OGridComponent } from 'ontimize-web-ngx';

@Component({
  selector: 'app-contenido-detail',
  templateUrl: './contenido-detail.component.html',
  styleUrls: ['./contenido-detail.component.scss']
})
export class ContenidoDetailComponent implements OnInit {

  public idDetalle;
  @ViewChild('grid') cuadricula: OGridComponent;

  constructor(private route : ActivatedRoute) { }

  ngOnInit() {

    this.route.paramMap.subscribe(params => {this.idDetalle = params.get("CONTENIDOID")})
    console.log("id de detalle clickado: " + this.idDetalle);
    console.log("desde onInit: " + this.cuadricula.getTotalRecordsNumber());


  }

}
