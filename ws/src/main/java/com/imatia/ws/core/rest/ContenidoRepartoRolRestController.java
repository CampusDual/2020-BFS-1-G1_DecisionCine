package com.imatia.ws.core.rest;

import com.imatia.api.core.service.ContenidoRepartoRolService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/contenidosRepartoRol")
@ComponentScan(basePackageClasses = { ContenidoRepartoRolService.class })
public class ContenidoRepartoRolRestController extends ORestController<ContenidoRepartoRolService> {

	@Autowired
	private ContenidoRepartoRolService contenidoRepartoRolService;


	@Override
	public ContenidoRepartoRolService getService() {
		return this.contenidoRepartoRolService;
	}
}