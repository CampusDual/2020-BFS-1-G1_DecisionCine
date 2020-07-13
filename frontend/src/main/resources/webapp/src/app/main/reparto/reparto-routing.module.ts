import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {RepartoHomeComponent} from './reparto-home/reparto-home.component';
import { RepartoDetailComponent } from "./reparto-detail/reparto-detail.component";

const routes: Routes = [{
  path: '',
  component: RepartoHomeComponent
},
{
  path: ':REPARTOOID',
  component: RepartoDetailComponent
}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class RepartoRoutingModule { }
