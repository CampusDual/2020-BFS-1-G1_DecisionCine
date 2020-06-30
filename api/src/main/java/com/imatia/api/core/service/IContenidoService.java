package com.imatia.api.core.service;

import java.util.List;
import java.util.Map;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

public interface IContenidoService {
    // Contenido
    public EntityResult contenidoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult contenidoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult contenidoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult contenidoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    // ultimos estrenos 
    public EntityResult ultimosEstrenosQuery(Map<String, Object> keyMap, List<String> attrList)throws OntimizeJEERuntimeException;

    //Tipo Contenido
    public EntityResult tipocontenidoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult tipocontenidoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult tipocontenidoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult tipocontenidoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

    //Contenido Más Puntuado
    public EntityResult puntuacionMasAlta(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;

    // Genero
    public EntityResult generoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult generoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult generoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult generoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}
