package com.imatia.model.core.service;


import com.imatia.api.core.service.ContenidoRepartoRolService;
import com.imatia.model.core.dao.ContenidoRepartoRolDao;
import com.imatia.model.core.dao.RepartoDao;
import com.imatia.model.core.dao.RolDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("ContenidoRepartoRolService")
@Lazy
public class ContenidoRepartoRolServiceImpl implements ContenidoRepartoRolService {

	@Autowired
	private ContenidoRepartoRolDao contenidoRepartoRolDao;

	@Autowired
	private RepartoDao repartoDao;

	@Autowired
	private RolDao rolDao;

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	// CONTENIDO REPARTO ROL
	@Override
	public EntityResult contenidoRepartoRolQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.contenidoRepartoRolDao, keyMap, attrList);
	}

	@Override
	public EntityResult contenidoRepartoRolInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.contenidoRepartoRolDao, attrMap);
	}

	@Override
	public EntityResult contenidoRepartoRolUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.contenidoRepartoRolDao, attrMap, keyMap);
	}

	@Override
	public EntityResult contenidoRepartoRolDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.contenidoRepartoRolDao, keyMap);
	}

	// REPARTO
	@Override
	public EntityResult repartoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.repartoDao, keyMap, attrList);
	}

	@Override
	public EntityResult repartoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.repartoDao, attrMap);
	}

	@Override
	public EntityResult repartoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.repartoDao, attrMap, keyMap);
	}

	@Override
	public EntityResult repartoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.repartoDao, keyMap);
	}

	// ROL
	@Override
	public EntityResult rolQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.rolDao, keyMap, attrList);
	}

	@Override
	public EntityResult rolInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.insert(this.rolDao, attrMap);
	}

	@Override
	public EntityResult rolUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.update(this.rolDao, attrMap, keyMap);
	}

	@Override
	public EntityResult rolDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		return this.daoHelper.delete(this.rolDao, keyMap);
	}

	// CUSTOM_QUERY REPARTOS_POR_CONTENIDO
	@Override
	public EntityResult repartosPorContenidoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.contenidoRepartoRolDao, keyMap, attrList, this.contenidoRepartoRolDao.REPARTOS_POR_CONTENIDO);
	}

	// CUSTOM_QUERY CONTENIDOS_POR_REPARTO
	@Override
	public EntityResult contenidosPorRepartoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
		return this.daoHelper.query(this.contenidoRepartoRolDao, keyMap, attrList, this.contenidoRepartoRolDao.CONTENIDOS_POR_REPARTO);
	}


}
