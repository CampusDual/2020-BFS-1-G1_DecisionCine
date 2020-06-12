package com.imatia.ws.core.rest;


import com.ontimize.db.EntityResult;
import com.ontimize.db.SQLStatementBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.imatia.api.core.service.IContenidoService;
import com.ontimize.jee.server.rest.ORestController;

import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/contenidos")
@ComponentScan(basePackageClasses = { com.imatia.api.core.service.IContenidoService.class })
public class ContenidoRestController extends ORestController<IContenidoService> {

    @Autowired
    private IContenidoService contenidoService;

    @Override
    public IContenidoService getService() {
        return this.contenidoService;
    }

    @RequestMapping(value="/puntuadas" , method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult getPelisPuntuacion(@RequestBody Map<String , Object> req){
        try{
            List<String> columns = (List<String>)req.get("columns");
            return contenidoService.puntuacionMasAlta(req,columns);
        }catch(Exception e){
            e.printStackTrace();
            EntityResult res = new EntityResult();
            res.setCode(EntityResult.OPERATION_WRONG);
            return res;
        }
    }
}
