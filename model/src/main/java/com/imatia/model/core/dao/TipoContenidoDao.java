package com.imatia.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("TipoContenidoDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/TipoContenidoDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class TipoContenidoDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_TIPO_CONTENIDO_ID= "tipo_contenido_id";
    public static final String ATTR_TIPO_CONTENIDO_NOMBRE = "tipo_contenido_id";

}