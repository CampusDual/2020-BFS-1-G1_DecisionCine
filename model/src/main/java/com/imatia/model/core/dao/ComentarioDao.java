package com.imatia.model.core.dao;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("ComentarioDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ComentarioDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class ComentarioDao extends OntimizeJdbcDaoSupport {

}
