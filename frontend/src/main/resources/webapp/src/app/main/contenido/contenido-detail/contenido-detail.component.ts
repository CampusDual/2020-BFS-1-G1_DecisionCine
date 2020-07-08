import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DatosService } from 'app/services/datos.service';

@Component({
  selector: 'app-contenido-detail',
  templateUrl: './contenido-detail.component.html',
  styleUrls: ['./contenido-detail.component.scss']
})
export class ContenidoDetailComponent implements OnInit {

  public contenidoFiltrado;

  constructor(activatedRoute: ActivatedRoute, dataService: DatosService) {
    activatedRoute.params.subscribe(params => {
      dataService.getContentById(params["CONTENIDOID"]).subscribe(response => {
        console.log(response);
        this.contenidoFiltrado = response["data"][0];
      })
    })

  }

  ngOnInit() {

  }

}
