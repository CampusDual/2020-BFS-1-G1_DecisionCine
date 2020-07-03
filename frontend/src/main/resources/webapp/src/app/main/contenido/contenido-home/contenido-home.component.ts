import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-contenido-home',
  templateUrl: './contenido-home.component.html',
  styleUrls: ['./contenido-home.component.scss']
})
export class ContenidoHomeComponent implements OnInit {

public UrlFoto:string = "https://picsum.photos/200/300";



  constructor() { }

  ngOnInit() {
  }
}
