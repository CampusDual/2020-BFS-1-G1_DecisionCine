import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { NoticiasRoutingModule } from './noticias-routing.module';
import { OntimizeWebModule } from 'ontimize-web-ngx';

@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    NoticiasRoutingModule
  ],
  declarations: []
})
export class NoticiasModule { }
