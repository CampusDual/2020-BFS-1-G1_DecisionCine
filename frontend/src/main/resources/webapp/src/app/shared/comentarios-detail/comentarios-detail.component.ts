import { Component, OnInit } from '@angular/core';
import { DatosService } from 'app/services/datos.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-comentarios-detail',
  templateUrl: './comentarios-detail.component.html',
  styleUrls: ['./comentarios-detail.component.scss']
})
export class ComentariosDetailComponent implements OnInit {
	
	  public comentarioFiltrado;

  constructor(activatedRoute: ActivatedRoute, dataService: DatosService) {
    activatedRoute.params.subscribe(params => {
      dataService.getContentById(params["CONTENIDOID"]).subscribe(response => {
        console.log(response);
        this.comentarioFiltrado = response["data"][0];
      })
    })

  }
	



  ngOnInit() {
  }

}
