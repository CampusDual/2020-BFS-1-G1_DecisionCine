package com.imatia.api.core.service;

import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;

public interface IGeneroService {

    //GENERO
    public EntityResult generoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
    public EntityResult generoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
    public EntityResult generoUpdate(Map<String, Object> attrMap , Map<String , Object> keyMap) throws OntimizeJEERuntimeException;
    public EntityResult generoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}
