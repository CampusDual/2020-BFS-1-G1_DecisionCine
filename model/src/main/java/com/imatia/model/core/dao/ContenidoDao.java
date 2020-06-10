package com.imatia.model.core.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Repository("ContenidoDao")
@Lazy
@ConfigurationFile(configurationFile = "dao/ContenidoDao.xml", configurationFilePlaceholder = "dao/placeholders.properties")

public class ContenidoDao extends OntimizeJdbcDaoSupport {

    public static final String ATTR_CONTENIDO_ID= "contenido_id";
    public static final String ATTR_CONTENIDO_GENERO_ID = "contenido_genero_id";
    public static final String ATTR_CONTENIDO_TIPO_CONTENDIO_ID= "contenido_tipo_contenido_id";
    public static final String ATTR_CONTENIDO_TITULO= "contenido_titulo";
    public static final String ATTR_CONTENIDO_SINOPSIS = "contenido_sinopsis";
    public static final String ATTR_CONTENIDO_DURACION = "contenido_duracion";
    public static final String ATTR_CONTENIDO_PUNTUACION = "contenido_puntuacion";
    public static final String ATTR_CONTENIDO_FECHA_ESTRENO = "contenido_fecha_estreno";
    public static final String ATTR_CONTENIDO_CAPITULOS= "contenido_capitulos";
    public static final String ATTR_CONTENIDO_FOTO= "contenido_foto";


}