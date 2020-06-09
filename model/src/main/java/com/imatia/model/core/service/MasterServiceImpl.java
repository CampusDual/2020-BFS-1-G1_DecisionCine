package com.imatia.model.core.service;


import com.imatia.api.core.service.MasterService;
import com.imatia.model.core.dao.RolDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("MasterService")
@Lazy
public class MasterServiceImpl implements MasterService {

	@Autowired
	private RolDao rolDao;

	// TODO RepartoDao repartoDao; lo tiene Germán

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	@Override
	public EntityResult repartoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
		throw new OntimizeJEERuntimeException("FUNCIONALIDAD SIN IMPLEMENTAR FALTA DAO REPARTO, ESTA EN RAMA GERMAN");
	}

	@Override
	public EntityResult repartoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
		throw new OntimizeJEERuntimeException("FUNCIONALIDAD SIN IMPLEMENTAR FALTA DAO REPARTO, ESTA EN RAMA GERMAN");
	}

	@Override
	public EntityResult repartoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		throw new OntimizeJEERuntimeException("FUNCIONALIDAD SIN IMPLEMENTAR FALTA DAO REPARTO, ESTA EN RAMA GERMAN");
	}

	@Override
	public EntityResult repartoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
		throw new OntimizeJEERuntimeException("FUNCIONALIDAD SIN IMPLEMENTAR FALTA DAO REPARTO, ESTA EN RAMA GERMAN");
	}

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
}
