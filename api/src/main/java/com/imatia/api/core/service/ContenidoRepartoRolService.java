package com.imatia.api.core.service;


import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;

import java.util.List;
import java.util.Map;


public interface ContenidoRepartoRolService {

	// CONTENIDO_REPARTO_ROL
	public EntityResult contenidoRepartoRolQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	public EntityResult contenidoRepartoRolInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
	public EntityResult contenidoRepartoRolUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
	public EntityResult contenidoRepartoRolDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

	// REPARTO
	public EntityResult repartoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	public EntityResult repartoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
	public EntityResult repartoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
	public EntityResult repartoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

	// ROL
	public EntityResult rolQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	public EntityResult rolInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
	public EntityResult rolUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
	public EntityResult rolDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

	// CUSTOM_QUERY REPARTOS_POR_CONTENIDO
	public EntityResult repartosPorContenidoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	// CUSTOM_QUERY CONTENIDOS_POR_REPARTO
	public EntityResult contenidosPorRepartoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
}
