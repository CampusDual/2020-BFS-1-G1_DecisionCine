package com.imatia.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IComentarioService {

    //COMENTARIO
    public EntityResult comentarioQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult comentarioInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult comentarioUpdate(Map<String, Object> attrMap , Map<String , Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult comentarioDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}