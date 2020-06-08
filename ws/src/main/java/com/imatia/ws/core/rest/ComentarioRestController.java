package com.imatia.ws.core.rest;

import com.imatia.api.core.service.IComentarioService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/comentarios")
@ComponentScan(basePackageClasses = {com.imatia.api.core.service.IComentarioService.class})
public class ComentarioRestController extends ORestController<IComentarioService> {

    @Autowired
    private IComentarioService comentarioService;

    @Override
    public IComentarioService getService() {
        return this.comentarioService;
    }
}
