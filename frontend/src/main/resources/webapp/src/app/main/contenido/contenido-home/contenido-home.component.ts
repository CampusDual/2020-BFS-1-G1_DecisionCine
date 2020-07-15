import { Component, OnInit, ViewChild } from '@angular/core';
import { FilterExpressionUtils, IExpression, OComboComponent } from 'ontimize-web-ngx';


@Component({
  selector: 'app-contenido-home',
  templateUrl: './contenido-home.component.html',
  styleUrls: ['./contenido-home.component.scss']
})
export class ContenidoHomeComponent implements OnInit {

  public createFilter(values: Array<{ attr: string, value: any }>): IExpression {
    // Prepare simple expressions from the filter components values
    console.log('createFilter, start');
    console.log(values);
    const filters: IExpression[] = [];
    values.forEach(fil => {
      if (fil.value) {
        if (fil.attr === 'genero_id') {
          filters.push(FilterExpressionUtils.buildExpressionEquals('contenido_genero_id', fil.value));
          //filters.push(FilterExpressionUtils.buildExpressionLike(fil.attr, 'El padrino'));
        }

      }
    });
    console.log(filters);
    // Build complex expression
    if (filters.length > 0) {
      console.log("entrando en if");
      return filters.reduce((exp1, exp2) => FilterExpressionUtils.buildComplexExpression(exp1, exp2, FilterExpressionUtils.OP_AND));
    } else {
      console.log("entrando en else");
      return null;
    }

  }

  //
  constructor() { }

  ngOnInit() {

  }


}
