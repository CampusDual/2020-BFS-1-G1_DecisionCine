package com.imatia.ws.core.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.imatia.api.core.service.IContenidoService;
import com.ontimize.jee.server.rest.ORestController;



@RestController
@RequestMapping("/contenido")
@ComponentScan(basePackageClasses = { com.imatia.api.core.service.IContenidoService.class })


public class ContenidoRestController extends ORestController<IContenidoService> {

    @Autowired
    private IContenidoService contenidoService;

    @Override
    public IContenidoService getService() {
        return this.contenidoService;
    }

}
