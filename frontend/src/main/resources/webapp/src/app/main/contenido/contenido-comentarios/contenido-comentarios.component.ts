import { Component, OnInit } from '@angular/core';
import { DatosService } from 'app/services/datos.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-contenido-comentarios',
  templateUrl: './contenido-comentarios.component.html',
  styleUrls: ['./contenido-comentarios.component.scss']
})
export class ContenidoComentariosComponent implements OnInit {
	  public comentarioFiltrado;

  constructor(activatedRoute: ActivatedRoute, dataService: DatosService) {
    activatedRoute.params.subscribe(params => {
      dataService.getComentariosBycometarioId(params["CONTENIDOID"]).subscribe(response => {
        console.log(response);
        this.comentarioFiltrado = response["data"];
      })
    })

  }


  ngOnInit() {
  }

}



