package com.imatia.model.core.service;

import com.imatia.api.core.service.IComentarioService;
import com.imatia.api.core.service.IRepartoService;
import com.imatia.model.core.dao.ComentarioDao;
import com.imatia.model.core.dao.RepartoDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("RepartoService")
@Lazy
public class RepartoService implements IRepartoService {

    @Autowired private RepartoDao repartoDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;

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
}