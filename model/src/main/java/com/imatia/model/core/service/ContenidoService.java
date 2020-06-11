package com.imatia.model.core.service;

import java.util.List;
import java.util.Map;

import com.imatia.model.core.dao.TipoContenidoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.imatia.api.core.service.IContenidoService;
import com.imatia.model.core.dao.ContenidoDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

@Service("ContenidoService")
@Lazy
public class ContenidoService implements IContenidoService{

 @Autowired private ContenidoDao contenidoDao;
 @Autowired private DefaultOntimizeDaoHelper daoHelper;
 @Autowired private TipoContenidoDao tipoContenidoDao;
 
 
 // contenido
 @Override
 public EntityResult contenidoQuery(Map<String, Object> keyMap, List<String> attrList)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.query(this.contenidoDao, keyMap, attrList);
 }

 @Override
 public EntityResult contenidoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.insert(this.contenidoDao, attrMap);
 }

 @Override
 public EntityResult contenidoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
   throws OntimizeJEERuntimeException {
  return this.daoHelper.update(this.contenidoDao, attrMap, keyMap);
 }

 @Override
 public EntityResult contenidoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.delete(this.contenidoDao, keyMap);
 }

 //TipoContenido
 @Override
 public EntityResult tipocontenidoQuery(Map<String, Object> keyMap, List<String> attrList)
         throws OntimizeJEERuntimeException {
  return this.daoHelper.query(this.tipoContenidoDao, keyMap, attrList);
 }

 @Override
 public EntityResult tipocontenidoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.insert(this.tipoContenidoDao, attrMap);
 }

 @Override
 public EntityResult tipocontenidoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap)
         throws OntimizeJEERuntimeException {
  return this.daoHelper.update(this.tipoContenidoDao, attrMap, keyMap);
 }

 @Override
 public EntityResult tipocontenidoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
  return this.daoHelper.delete(this.tipoContenidoDao, keyMap);
 }

}