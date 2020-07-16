import { Component, OnInit } from '@angular/core';
import { DatosService } from 'app/services/datos.service';
import { Router, ActivatedRoute } from '@angular/router';
import { OGridItemDirective } from 'ontimize-web-ngx/ontimize/components/grid/grid-item/o-grid-item.directive';

@Component({
	selector: 'app-reparto-detail',
	templateUrl: './reparto-detail.component.html',
	styleUrls: ['./reparto-detail.component.scss']
})
export class RepartoDetailComponent implements OnInit {

	public repartoFiltrado;
	public contenidoFiltradoPorReparto;
	public mostrarFilmografia: boolean;

	constructor(activatedRoute: ActivatedRoute, dataService: DatosService, private router: Router,
		private actRoute: ActivatedRoute) {
		activatedRoute.params.subscribe(params => {
			dataService.getRepartoById(params["REPARTOID"]).subscribe(response => {
				console.log(response);
				this.repartoFiltrado = response["data"][0];
			})
			dataService.getContentByRepartoId(params["REPARTOID"]).subscribe(response => {
				console.log(response);
				this.contenidoFiltradoPorReparto = response["data"];
				this.inicializarContenido(this.contenidoFiltradoPorReparto.length);
			})
		})

	}
	ngOnInit() {
	}

	navigate() {
		this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
	}


	inicializarContenido(cantidad: number) {
		console.log("entrando en inicializarContenido de detalle reparto: " + cantidad);
		if (cantidad == undefined) {
			console.log("NO hay filmografía relacionada con este reparto");
			this.mostrarFilmografia = false;
		} else {
			console.log("SI hay: " + cantidad + " filmografías relacionadas con este reparto");
			this.mostrarFilmografia = true;
		}
	}

	// TODO actualmente no se usa
	onRedirectToContentDetail(event: OGridItemDirective) {
		
		let idDetalle: Number;
		console.log("entrando en: onRedirectToContentDetail()");
		console.log(event);
		console.log(event.getItemData());
		
	}
}

