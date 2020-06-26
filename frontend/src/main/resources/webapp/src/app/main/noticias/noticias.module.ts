import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { NoticiasRoutingModule } from './noticias-routing.module';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { NoticiasHomeComponent } from './noticias-home/noticias-home.component';

@NgModule({
  imports: [
    CommonModule,
    OntimizeWebModule,
    NoticiasRoutingModule
  ],
  declarations: [
    NoticiasHomeComponent
  ]
})
export class NoticiasModule { }
