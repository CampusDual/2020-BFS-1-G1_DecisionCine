package com.imatia.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("RolDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/RolDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class RolDao extends OntimizeJdbcDaoSupport {

	public static final String ID = "rol_id";
	public static final String PHOTO = "rol_nombre";


}