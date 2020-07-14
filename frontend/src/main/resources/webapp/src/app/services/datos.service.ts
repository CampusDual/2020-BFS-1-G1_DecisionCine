import { Injectable } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { CONFIG } from 'app/app.config';

@Injectable({
  providedIn: 'root'
})
export class DatosService {

  httOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg=='
    })
  }

  private apiEndPointContenido = CONFIG.apiEndpoint + "/contenidos/contenido/search";
  private apiEndPointComentario = CONFIG.apiEndpoint + "/comentarios/comentario/search";
  private apiEndPointReparto = CONFIG.apiEndpoint + "/repartos/reparto/search";
 private apiEndPointContenidosPorReparto = CONFIG.apiEndpoint + "/contenidosRepartoRol/contenidosPorReparto/search";
 private apiEndPointRepartosPorContenido = CONFIG.apiEndpoint + "/contenidosRepartoRol/repartosPorContenido/search";


  constructor(private http: HttpClient) { }

  getContentById(content_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "contenido_id": content_id
      },
      "columns": [
        "contenido_id", "contenido_tipo_contenido_id", "contenido_sinopsis","contenido_puntuacion","contenido_genero_id", "contenido_fecha_estreno","contenido_titulo","contenido_duracion", "contenido_foto","contenido_capitulos"
      ]
    }
    return this.http.post<any>(this.apiEndPointContenido, postBody, this.httOptions);
  }
getComentariosByContentId(contenido_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "contenido_id": contenido_id
      },
      "columns": [
       "comentario_id", "contenido_id","usuario_id","descripcion","fecha"
      ]
    }
    return this.http.post<any>(this.apiEndPointComentario, postBody, this.httOptions);
  }

  getRepartoById(reparto_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "reparto_id": reparto_id
      },
      "columns": [
        "reparto_id", "reparto_nombre","reparto_apellido_1","reparto_apellido_2","reparto_bibliografia","reparto_foto"
      ]
    }
    return this.http.post<any>(this.apiEndPointReparto, postBody, this.httOptions);
  }

//metodo para incrustar los actores de una pelicula en la ficha de detalle contenido
getRepartoByContentId(contenido_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "contenido_id": contenido_id
      },
      "columns": [
       "reparto_id", "reparto_nombre","reparto_apellido_1","reparto_apellido_2","reparto_bibliografia","reparto_foto"
      ]
    }
    return this.http.post<any>(this.apiEndPointContenidosPorReparto, postBody, this.httOptions);
  }


//metodo para incrustar las peliculas de un actor/director en la ficha de detalle reparto
getContentByRepartoId(reparto_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "reparto_id": reparto_id
      },
      "columns": [
         "contenido_id", "contenido_tipo_contenido_id", "contenido_sinopsis","contenido_puntuacion","contenido_genero_id", "contenido_fecha_estreno","contenido_titulo","contenido_duracion", "contenido_foto","contenido_capitulos"
      ]
    }
    return this.http.post<any>(this.apiEndPointRepartosPorContenido, postBody, this.httOptions);
  }


}

interface RespuestaBackOntimize{

  code: number;
  data: Array<Object>;
  message: '';
  sqlTypes?: Object;
  startRecordIndex?: number;
  totalQueryRecordsNumber?: number;

}
