import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ContenidoRoutingModule } from './contenido-routing.module';
import {OntimizeWebModule} from "ontimize-web-ngx";
import {ContenidoHomeComponent} from "./contenido-home/contenido-home.component";
import { SharedModule } from 'app/shared/shared.module';

@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    ContenidoRoutingModule,
    SharedModule
  ],
  declarations: [
    ContenidoHomeComponent
  ]
})
export class ContenidoModule { }
