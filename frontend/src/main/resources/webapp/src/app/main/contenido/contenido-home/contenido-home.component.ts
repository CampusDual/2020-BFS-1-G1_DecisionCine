import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-contenido-home',
  templateUrl: './contenido-home.component.html',
  styleUrls: ['./contenido-home.component.scss']
})
export class ContenidoHomeComponent implements OnInit {

	public contenido:string []=[
"contenido_id",
"contenido_genero_id",
"contenido_tipo_contenido_id",
"contenido_titulo",
"contenido_sinopsis",
"contenido_duracion",
"contenido_puntuacion",
"contenido_fecha_estreno",
"contenido_capitulos"
];

  constructor() { }

  ngOnInit() {
  }
}
