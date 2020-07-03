import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuardService } from 'ontimize-web-ngx';

import { MainComponent } from './main.component';
import { HomeModule } from './home/home.module';
import { NoticiasModule } from './noticias/noticias.module';
import {ContenidoModule} from "./contenido/contenido.module";
import {RepartoModule} from "./reparto/reparto.module";

export function loadHomeModule() {
  return HomeModule;
}
export function loadRepartoModule() {
  return RepartoModule
}

export function loadContenidoModule() {
  return ContenidoModule
}

export function loadNoticasModule() {
  return NoticiasModule;
}

export const routes: Routes = [
  {
    path: '',
    component: MainComponent,
    canActivate: [AuthGuardService],
    children: [
      { path: '', redirectTo: 'home', pathMatch: 'full' },
      {
        path: 'home',
        loadChildren: loadHomeModule
      },
      {
        path: 'noticias',
        loadChildren: loadNoticasModule
      },
      {
        path:  'contenido',
        loadChildren: loadContenidoModule
      },
	    {
        path:  'reparto',
        loadChildren: loadRepartoModule
      },
      {
        path: 'contenido_id',
        //component: ruta Contenido detalle componente

      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MainRoutingModule { }
