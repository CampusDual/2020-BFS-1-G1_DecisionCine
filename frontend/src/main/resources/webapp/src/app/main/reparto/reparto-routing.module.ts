import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {RepartoHomeComponent} from './reparto-home/reparto-home.component';

const routes: Routes = [{
  path: '',
  component: RepartoHomeComponent
}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class RepartoRoutingModule { }
