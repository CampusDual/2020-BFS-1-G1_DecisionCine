package com.imatia.model.core.service;

import com.imatia.api.core.service.IGeneroService;
import com.imatia.model.core.dao.GeneroDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("GeneroService")
@Lazy
public class GeneroService implements IGeneroService {

    @Autowired
    private GeneroDao generoDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;

    @Override
    public EntityResult generoQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.generoDao, keyMap, attrList);
    }

    @Override
    public EntityResult generoInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.generoDao, attrMap);
    }

    @Override
    public EntityResult generoUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.generoDao, attrMap, keyMap);
    }

    @Override
    public EntityResult generoDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.generoDao, keyMap);
    }
}
