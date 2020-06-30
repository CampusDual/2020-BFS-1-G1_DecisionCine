import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ContenidoHomeComponent} from "./contenido-home/contenido-home.component";

const routes: Routes = [{
  path: '',
  component: ContenidoHomeComponent
}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ContenidoRoutingModule { }
