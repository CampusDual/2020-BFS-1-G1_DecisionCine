import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ContenidoRoutingModule } from './contenido-routing.module';
import {OntimizeWebModule} from "ontimize-web-ngx";
import {ContenidoHomeComponent} from "./contenido-home/contenido-home.component";

@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    ContenidoRoutingModule
  ],
  declarations: [
    ContenidoHomeComponent
  ]
})
export class ContenidoModule { }
