package com.imatia.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("ContenidoDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ContenidoDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")

public class ContenidoDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_contenido_id = "contenido_id";
    public static final String ATTR_contenido_genero_id = "contenido_genero_id";
    public static final String ATTR_contenido_tipo_contenido_id = "contenido_tipo_contenido_id";
    public static final String ATTR_contenido_titulo = "contenido_titulo";
    public static final String ATTR_contenido_sinopsis = "contenido_sinopsis";
    public static final String ATTR_contenido_duracion = "contenido_duracion";
    public static final String ATTR_contenido_puntuacion = "contenido_puntuacion";
    public static final String ATTR_contenido_fecha_estreno = "contenido_fecha_estreno";
    public static final String ATTR_contenido_capitulos = "contenido_capitulos";
    public static final String ATTR_contenido_foto= "contenido_foto";


}