import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { NoticiasHomeComponent } from './noticias-home/noticias-home.component';

const routes: Routes = [{
  path: '',
  component: NoticiasHomeComponent
}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class NoticiasRoutingModule { }
