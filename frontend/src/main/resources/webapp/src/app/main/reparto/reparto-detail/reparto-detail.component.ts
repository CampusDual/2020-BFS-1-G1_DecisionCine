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
public repartoContenidoFiltrado;
public mostrarContenido: boolean;

  constructor(activatedRoute: ActivatedRoute, dataService: DatosService,private router: Router,
		private actRoute: ActivatedRoute) {
    activatedRoute.params.subscribe(params => {
      dataService.getRepartoById(params["REPARTOID"]).subscribe(response => {
        console.log(response);
        this.repartoFiltrado = response["data"][0];
      })
      dataService.getRepartoByContentId(params["CONTENIDOID"]).subscribe(response => {
				console.log(response);
				this.repartoContenidoFiltrado = response["data"];
				this.inicializarContenido(this.repartoContenidoFiltrado.length);
			})
    })

  }
  ngOnInit() {
  }

  navigate() {
		this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
	}
	
	onRedirectToDetail(event: OGridItemDirective) {
	let idDetalle: Number;
	console.log("entrando en: onRedirectToDetail() detalles Contendido");
	console.log(event);
	console.log(event.getItemData());
	console.log(event.getItemData()['contenido_id']);
	idDetalle = event.getItemData()['contenido_id'];
	this.router.navigateByUrl("/main/contenido/" + idDetalle);
	}


  inicializarContenido(cantidad:number){
		console.log("entrando en inicializarContenido: " + cantidad);
		if(cantidad==undefined){
			console.log ("no hay contenido");
			this.mostrarContenido=false;
		}else {
			console.log ("hay: "+ cantidad);
			this.mostrarContenido=true;
		}
	}
}

