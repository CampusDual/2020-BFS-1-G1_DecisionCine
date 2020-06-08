package com.imatia.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("ComentarioDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ComentarioDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class ComentarioDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_comentario_id = "comentario_id";
    public static final String ATTR_contenido_id= "contenido_id";
    public static final String ATTR_usuario_id = "usuario_id";
    public static final String ATTR_descripcion = "descripcion";
    public static final String ATTR_fecha = "fecha";

}
