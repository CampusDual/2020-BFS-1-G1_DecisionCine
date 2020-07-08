import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { CommonModule } from '@angular/common';
import { SharedComponentFooterComponent } from "./shared-component-footer/shared-component-footer.component";
import { ContenidoDetailComponent } from './contenido-detail/contenido-detail.component';
import { ComentariosDetailComponent } from './comentarios-detail/comentarios-detail.component';
@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
    SharedComponentFooterComponent,
    ContenidoDetailComponent,
	ComentariosDetailComponent
  ],
  exports: [
    CommonModule,
    SharedComponentFooterComponent,
    ContenidoDetailComponent,
	ComentariosDetailComponent
  ]
})
export class SharedModule { }
