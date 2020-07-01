import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ContenidoHomeComponent} from "./contenido-home/contenido-home.component";
import { ContenidoDetailComponent } from './contenido-detail/contenido-detail.component';

const routes: Routes = [
  {
  path: '',
  component: ContenidoHomeComponent
  }, 
  {
    path: ':contenido_id',
    component: ContenidoDetailComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ContenidoRoutingModule { }
