package com.imatia.model.core.dao;


import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;


@Lazy
@Repository(value = "NoticiaDao")
@ConfigurationFile(
	configurationFile = "dao/NoticiaDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")
public class NoticiaDao extends OntimizeJdbcDaoSupport {

	public static final String NOTICIA_ID = "noticia_id";
	public static final String NOTICIA_USUARIO_ID = "noticia_usuario_id";

	public static final String DESCRIPCION = "noticia_descripcion";
	public static final String FECHA_ALTA = "noticia_fecha_alta";
	public static final String FECHA_MODIFICACION = "noticia_fecha_modificacion";

}
