package com.imatia.model.core.service;

import com.imatia.api.core.service.IComentarioService;
import com.imatia.model.core.dao.ComentarioDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("ComentarioService")           //servicio de Comentario
@Lazy                                   //permite que se ejecute cuando es llamado y no cuando se arranca el proyecto
public class ComentarioService implements IComentarioService {

    //enlaza con las variables definidas, sin usar getters y setters
    @Autowired private ComentarioDao comentarioDao;
    @Autowired private DefaultOntimizeDaoHelper daoHelper;

    @Override
    public EntityResult comentarioQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException {
        return this.daoHelper.query(this.comentarioDao, keyMap, attrList);
    }

    @Override
    public EntityResult comentarioInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.insert(this.comentarioDao, attrMap);
    }

    @Override
    public EntityResult comentarioUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.update(this.comentarioDao, attrMap, keyMap);
    }

    @Override
    public EntityResult comentarioDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException {
        return this.daoHelper.delete(this.comentarioDao, keyMap);
    }
}
