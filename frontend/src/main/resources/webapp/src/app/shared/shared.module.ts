import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { CommonModule } from '@angular/common';
import { SharedComponentFooterComponent } from "./shared-component-footer/shared-component-footer.component";

@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
    SharedComponentFooterComponent
  ],
  exports: [
    CommonModule,
    SharedComponentFooterComponent
  ]
})
export class SharedModule { }
