package com.imatia.ws.core.rest;

import com.imatia.api.core.service.IGeneroService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/generos")
@ComponentScan(basePackageClasses = {com.imatia.api.core.service.IComentarioService.class})
public class GeneroRestController extends ORestController<IGeneroService> {

    @Autowired
    private IGeneroService generoService;

    @Override
    public IGeneroService getService() {
        return this.generoService;
    }
}
