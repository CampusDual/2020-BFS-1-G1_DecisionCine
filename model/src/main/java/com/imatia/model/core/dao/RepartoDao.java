package com.imatia.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("RepartoDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/RepartoDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class RepartoDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_reparto_id = "reparto_id";
    public static final String ATTR_reparto_nombre= "reparto_nombre";
    public static final String ATTR_reparto_apellido_1 = "reparto_apellido_1";
    public static final String ATTR_reparto_apellido_2 = "reparto_apellido_2";
    public static final String ATTR_reparto_foto = "reparto_foto";

}
