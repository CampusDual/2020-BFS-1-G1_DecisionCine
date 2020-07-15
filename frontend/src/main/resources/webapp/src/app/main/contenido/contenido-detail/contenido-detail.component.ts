import { Component, OnInit } from '@angular/core';
import { DatosService } from 'app/services/datos.service';
import { Router, ActivatedRoute } from '@angular/router';
import { OGridItemDirective } from 'ontimize-web-ngx/ontimize/components/grid/grid-item/o-grid-item.directive';

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
	
	
	constructor(activatedRoute: ActivatedRoute, dataService: DatosService, private router: Router,
		private actRoute: ActivatedRoute) {
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



	navigate() {
		this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
	}
	
	onRedirectToDetail(event: OGridItemDirective) {
	let idDetalle: Number;
	console.log("entrando en: onRedirectToDetail() detalles Contendido");
	console.log(event);
	console.log(event.getItemData());
	console.log(event.getItemData()['reparto_id']);
	idDetalle = event.getItemData()['reparto_id'];
	this.router.navigateByUrl("/main/reparto/" + idDetalle);
	}

}





