package com.imatia.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

@Repository("ContenidoRepartoRolDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ContenidoRepartoRolDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")
public class ContenidoRepartoRolDao extends OntimizeJdbcDaoSupport {

	public static final String ID = "contenido_reparto_rol_id";
	public static final String REPARTO_ID = "reparto_id";
	public static final String USUARIO_ID = "usuario_id";
	public static final String ROL_ID = "rol_id";
	public static final String CONTENIDO_ID = "contenido_id";


}