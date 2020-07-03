import { Component,OnInit } from '@angular/core';
import { FilterExpressionUtils, IExpression } from 'ontimize-web-ngx';


@Component({
  selector: 'app-contenido-home',
  templateUrl: './contenido-home.component.html',
  styleUrls: ['./contenido-home.component.scss']
})
export class ContenidoHomeComponent implements OnInit {

public UrlFoto:string = "https://picsum.photos/200/300";
    
   
	public  createFilter(values: Array<{ attr, value }>): IExpression {
    // Prepare simple expressions from the filter components values
    let filters: Array<IExpression> = [];
    values.forEach(fil => {
      if (fil.value) {
        if (fil.attr === 'contenido_titulo' || fil.attr === 'contenido_titulo') {
          filters.push(FilterExpressionUtils.buildExpressionLike(fil.attr, fil.value));
        }
        if (fil.attr === 'contenido_id') {
          filters.push(FilterExpressionUtils.buildExpressionEquals(fil.attr, fil.value));
        }
      }
    });

    // Build complex expression
   if (filters.length > 0) {
      return filters.reduce((exp1, exp2) => FilterExpressionUtils.buildComplexExpression(exp1, exp2, FilterExpressionUtils.OP_AND));
    } else {
      return null;
    }
  }
//
  constructor() { }

  ngOnInit() {
  }


}
