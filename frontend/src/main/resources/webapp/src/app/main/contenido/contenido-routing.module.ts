import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ContenidoHomeComponent} from "./contenido-home/contenido-home.component";
import { ContenidoDetailComponent } from './contenido-detail/contenido-detail.component';
import { ContenidoComentariosComponent } from './contenido-comentarios/contenido-comentarios.component';
const routes: Routes = [{
  path: '',
  component: ContenidoHomeComponent
}, 
{
  path: ':CONTENIDOID',
  component: ContenidoDetailComponent
}
, 
{
  path: ':COMENTARIOID',
  component: ContenidoComentariosComponent
}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ContenidoRoutingModule { }
