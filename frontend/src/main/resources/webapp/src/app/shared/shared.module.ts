import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { CommonModule } from '@angular/common';
import { SharedFooterComponent } from "./shared-component-footer/shared-component-footer.component";

@NgModule({
  imports: [
    OntimizeWebModule
  ],
  declarations: [
	SharedFooterComponent
  ],
  exports: [
    CommonModule
  ]
})
export class SharedModule { }
