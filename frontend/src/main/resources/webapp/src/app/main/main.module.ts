import { NgModule } from '@angular/core';
import {OAppHeaderModule, OntimizeWebModule} from 'ontimize-web-ngx';
import { SharedModule } from '../shared/shared.module';
import { MainComponent } from './main.component';
import { MainRoutingModule } from './main-routing.module';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';

@NgModule({
    imports: [
        SharedModule,
        OntimizeWebModule,
        MainRoutingModule,
        OAppHeaderModule
    ],
  declarations: [
    MainComponent,
    PageNotFoundComponent
  ]
})
export class MainModule { }
