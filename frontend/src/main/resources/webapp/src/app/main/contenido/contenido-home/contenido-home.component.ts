import { Component, OnInit, ViewChild } from '@angular/core';
import { FilterExpressionUtils, IExpression, OComboComponent, OValueChangeEvent, OGridComponent } from 'ontimize-web-ngx';


@Component({
  selector: 'app-contenido-home',
  templateUrl: './contenido-home.component.html',
  styleUrls: ['./contenido-home.component.scss']
})
export class ContenidoHomeComponent implements OnInit {

  private idComboSelected: Number;

  @ViewChild('grid')
  protected contenidoGrid   : OGridComponent;

  public createFilter(values: Array<{ attr: string, value: any }>): IExpression {
    // Prepare simple expressions from the filter components values
    console.log('createFilter, start');
    console.log(values);
    const filters: IExpression[] = [];

    filters.push(FilterExpressionUtils.buildExpressionEquals('contenido_genero_id', this.idComboSelected));

    console.log(filters);

    // values.forEach(fil => {
    //   if (fil.value) {
    //     if (fil.attr === 'genero_id') {

    //       console.log("añadiendo un filtro");
    //       filters.push(FilterExpressionUtils.buildExpressionEquals('contenido_genero_id', this.idComboSelected));
    //       //filters.push(FilterExpressionUtils.buildExpressionLike(fil.attr, 'El padrino'));

    //     } else {

    //       console.log("el atributo NO es genero_id, NO se añade un filtro");

    //     }

    //   } else {

    //     console.log("no hay valor");

    //   }
    // });
    console.log(filters);
    // Build complex expression
    if (filters.length > 0) {
      console.log("SI hay al menos un filtro para reducir");
      return filters.reduce((exp1, exp2) => FilterExpressionUtils.buildComplexExpression(exp1, exp2, FilterExpressionUtils.OP_AND));
    } else {
      console.log("NO hay al menos un filtro para reducir");
      return null;
    }

  }

  valorCombo(event: OValueChangeEvent) {

    console.log("entrando en: valorCombo");
    console.log(event);
    console.log(event.newValue);
    this.idComboSelected = event.newValue;

  }

  constructor() { }

  ngOnInit() {

  }

}
