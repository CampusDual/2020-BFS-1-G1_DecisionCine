package com.imatia.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("GeneroDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/GeneroDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")

public class GeneroDao extends OntimizeJdbcDaoSupport {
	public static final String ATTR_GENERO_ID = "genero_id";
	public static final String ATTR_GENERO_NOMBRE = "genero_nombre";

}
