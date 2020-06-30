import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuardService } from 'ontimize-web-ngx';

import { MainComponent } from './main.component';
import { HomeModule } from './home/home.module';
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
        path:  'contenido',
        loadChildren: loadContenidoModule
	    ,{
        path:  'reparto',
        loadChildren: loadRepartoModule
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MainRoutingModule { }
