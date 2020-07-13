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

  constructor(private http: HttpClient) { }

  getContentById(content_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "contenido_id": +content_id
      },
      "columns": [
        "contenido_id", "contenido_tipo_contenido_id", "contenido_sinopsis","contenido_puntuacion","contenido_genero_id", "contenido_fecha_estreno","contenido_titulo","contenido_duracion", "contenido_foto","contenido_capitulos"
      ]
    }
    return this.http.post<any>(this.apiEndPointContenido, postBody, this.httOptions);
  }
getComentariosBycometarioId(contenido_id: Number): Observable<RespuestaBackOntimize> {
    const postBody = {
      "filter": {
        "contenido_id": +contenido_id
      },
      "columns": [
       "comentario_id", "contenido_id","usuario_id","descripcion","fecha"
      ]
    }
    return this.http.post<any>(this.apiEndPointComentario, postBody, this.httOptions);
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
