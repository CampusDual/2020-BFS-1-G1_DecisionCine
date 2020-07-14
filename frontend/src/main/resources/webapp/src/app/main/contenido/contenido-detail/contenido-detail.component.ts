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
	public comentarioFiltrado;
	public contenidoRepartoFiltrado;
	public mostrarcomentario:boolean;
	public mostrarReparto: boolean;
	
	
	constructor(activatedRoute: ActivatedRoute, dataService: DatosService) {
		activatedRoute.params.subscribe(params => {
			dataService.getContentById(params["CONTENIDOID"]).subscribe(response => {
				console.log(response);
				this.contenidoFiltrado = response["data"][0];
			})
			dataService.getComentariosByContentId(params["CONTENIDOID"]).subscribe(response => {
				console.log(response);
				this.comentarioFiltrado = response["data"];
				this.inicializarcomentario(this.comentarioFiltrado.length);
			})
			dataService.getRepartoByContentId(params["CONTENIDOID"]).subscribe(response => {
				console.log(response);
				this.contenidoRepartoFiltrado = response["data"];
				this.inicializarReparto(this.contenidoRepartoFiltrado.length);
			})

		}

		)

	}
	ngOnInit() {
	
	}
	
	inicializarcomentario(cantidad:number){
		console.log("entrando en inicializarcomentario: " + cantidad);
		if(cantidad==undefined){
			console.log ("no hay comentarios");
			this.mostrarcomentario=false;
		}else {
			console.log ("hay: "+ cantidad);
			this.mostrarcomentario=true;
		}
	}

		
	inicializarReparto(cantidad:number){
		console.log("entrando en inicializarReparto: " + cantidad);
		if(cantidad==undefined){
			console.log ("no hay reparto");
			this.mostrarReparto=false;
		}else {
			console.log ("hay: "+ cantidad);
			this.mostrarReparto=true;
		}
	}

}





