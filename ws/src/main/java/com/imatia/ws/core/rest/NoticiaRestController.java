package com.imatia.ws.core.rest;

import com.imatia.api.core.service.NoticiaService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/noticias")
@ComponentScan(basePackageClasses = {NoticiaService.class})
public class NoticiaRestController extends ORestController<NoticiaService> {

	@Autowired
	private NoticiaService noticiaService;


	@Override
	public NoticiaService getService() {
		return this.noticiaService;
	}
}
