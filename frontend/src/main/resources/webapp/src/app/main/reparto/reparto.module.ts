import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { RepartoRoutingModule } from './reparto-routing.module';
import {OntimizeWebModule} from 'ontimize-web-ngx';
import {RepartoHomeComponent} from "./reparto-home/reparto-home.component";
import { RepartoDetailComponent } from './reparto-detail/reparto-detail.component';





@NgModule({
  imports: [
    CommonModule,
	OntimizeWebModule,
    RepartoRoutingModule
  ],
  declarations: [
	RepartoHomeComponent,
	RepartoDetailComponent
]
})
export class RepartoModule { }
