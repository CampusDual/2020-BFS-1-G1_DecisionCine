import { NgModule } from '@angular/core';
import {OAppHeaderModule, OntimizeWebModule} from 'ontimize-web-ngx';
import { SharedModule } from '../shared/shared.module';
import { MainComponent } from './main.component';
import { MainRoutingModule } from './main-routing.module';

@NgModule({
    imports: [
        SharedModule,
        OntimizeWebModule,
        MainRoutingModule,
        OAppHeaderModule
    ],
  declarations: [
    MainComponent
  ]
})
export class MainModule { }
