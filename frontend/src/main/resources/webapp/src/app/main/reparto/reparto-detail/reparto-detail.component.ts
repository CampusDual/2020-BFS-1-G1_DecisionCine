import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DatosService } from 'app/services/datos.service';

@Component({
  selector: 'app-reparto-detail',
  templateUrl: './reparto-detail.component.html',
  styleUrls: ['./reparto-detail.component.scss']
})
export class RepartoDetailComponent implements OnInit {
public repartoFiltrado;

  constructor(activatedRoute: ActivatedRoute, dataService: DatosService) {
    activatedRoute.params.subscribe(params => {
      dataService.getRepartoById(params["REPARTOID"]).subscribe(response => {
        console.log(response);
        this.repartoFiltrado = response["data"][0];
      })
    })

  }
  ngOnInit() {
  }

}

