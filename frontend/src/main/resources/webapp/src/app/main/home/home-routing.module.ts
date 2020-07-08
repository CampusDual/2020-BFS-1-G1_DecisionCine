import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { HomeComponent } from './home.component';
import { ContenidoDetailComponent } from 'app/shared/contenido-detail/contenido-detail.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  }, 
  {
    path: ':CONTENIDOID',
    component: ContenidoDetailComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class HomeRoutingModule { }
