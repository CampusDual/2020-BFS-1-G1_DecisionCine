import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-contenido-detail',
  templateUrl: './contenido-detail.component.html',
  styleUrls: ['./contenido-detail.component.scss']
})
export class ContenidoDetailComponent implements OnInit {

  public idDetalle;

  constructor(private route : ActivatedRoute) { }

  ngOnInit() {

    this.route.paramMap.subscribe(params => {this.idDetalle = params.get("CONTENIDOID")})
    console.log("id de detalle clickado: " + this.idDetalle);
    // console.log(this.getDataArray())

  }

}
