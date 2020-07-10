import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { CommonModule } from '@angular/common';
import { SharedComponentFooterComponent } from "./shared-component-footer/shared-component-footer.component";
import { ContenidoDetailComponent } from '../main/contenido/contenido-detail/contenido-detail.component';

@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
    SharedComponentFooterComponent,
    ContenidoDetailComponent
  ],
  exports: [
    CommonModule,
    SharedComponentFooterComponent,
    ContenidoDetailComponent
  ]
})
export class SharedModule { }
