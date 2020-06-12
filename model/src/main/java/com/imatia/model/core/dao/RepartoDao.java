package com.imatia.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("RepartoDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/RepartoDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class RepartoDao extends OntimizeJdbcDaoSupport {

    public static final String ID = "reparto_id";
    public static final String NOMBRE = "reparto_nombre";
    public static final String APELLIDO_1 = "reparto_apellido_1";
    public static final String APELLIDO_2 = "reparto_apellido_2";
    public static final String BIBLIOGRAFIA = "reparto_bibliografia";
    public static final String FOTO = "reparto_foto";

}
