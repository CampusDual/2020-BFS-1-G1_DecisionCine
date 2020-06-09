package com.imatia.ws.core.rest;

import com.imatia.api.core.service.MasterService;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/master")
@ComponentScan(basePackageClasses = { com.imatia.api.core.service.MasterService.class })
public class MasterRestController extends ORestController<MasterService> {

	@Autowired
	private MasterService masterService;


	@Override
	public MasterService getService() {
		return this.masterService;
	}
}