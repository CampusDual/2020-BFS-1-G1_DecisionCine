package com.imatia.ws.core.rest;

import com.imatia.api.core.service.NewService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/news")
@ComponentScan(basePackageClasses = {com.imatia.api.core.service.NewService.class})
public class NewRestController extends ORestController<NewService> {

	@Autowired
	private NewService newService;


	@Override
	public NewService getService() {
		return this.newService;
	}
}
