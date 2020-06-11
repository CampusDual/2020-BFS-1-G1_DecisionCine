package com.imatia.ws.core.rest;

import com.imatia.api.core.service.IRepartoService;
import com.imatia.model.core.dao.RepartoDao;
import com.ontimize.db.EntityResult;
import com.ontimize.db.SQLStatementBuilder;
import com.ontimize.db.SQLStatementBuilder.BasicExpression;
import com.ontimize.db.SQLStatementBuilder.BasicField;
import com.ontimize.db.SQLStatementBuilder.BasicOperator;
import com.ontimize.jee.server.rest.ORestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/repartos")
@ComponentScan(basePackageClasses = {com.imatia.api.core.service.IRepartoService.class})
public class RepartoRestController extends ORestController<IRepartoService> {

    @Autowired
    private IRepartoService repartoService;

    @Override
    public IRepartoService getService() {
        return this.repartoService;
    }

    @RequestMapping(value = "repartosRol/search", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public EntityResult repartosRolSearch(@RequestBody Map<String, Object> req) {

        EntityResult res = new EntityResult();

        try {

            List<String> columns = (List<String>) req.get("columns");
            String rol = (String) req.get("rol");
            Map<String, Object> key = new HashMap<String, Object>();
            key.put(SQLStatementBuilder.ExtendedSQLConditionValuesProcessor.EXPRESSION_KEY, buscarPorRol(rol));
            res =  this.repartoService.repartoPorRolQuery(key, columns);

        } catch (Exception e) {

            e.printStackTrace();
            res.setCode(EntityResult.OPERATION_WRONG);

        }

        return res;
    }

    private BasicExpression buscarPorRol(String rol){

        BasicField basicField = new BasicField("rol_nombre");
        BasicExpression basicExpression = new BasicExpression(basicField, BasicOperator.LIKE_OP, rol);

        return basicExpression;

    }
}
