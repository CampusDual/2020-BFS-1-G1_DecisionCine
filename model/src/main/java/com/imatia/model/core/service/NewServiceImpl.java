package com.imatia.model.core.service;


import com.imatia.api.core.service.IUserService;
import com.imatia.api.core.service.NewService;
import com.imatia.model.core.dao.NewDao;
import com.imatia.model.core.dao.UserDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("NewService")
@Lazy
public class NewServiceImpl implements NewService {

	@Autowired
	private NewDao newDao;

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;


	@Override
	public EntityResult newQuery(Map<String, Object> keyMap, List<String> attrList) {
		return this.daoHelper.query(this.newDao, keyMap, attrList);
	}

	@Override
	public EntityResult newInsert(Map<String, Object> attrMap) {
		return this.daoHelper.insert(this.newDao, attrMap);
	}

	@Override
	public EntityResult newUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) {
		return this.daoHelper.update(this.newDao, attrMap, keyMap);
	}

	@Override
	public EntityResult newDelete(Map<String, Object> keyMap) {
		return this.daoHelper.delete(this.newDao, keyMap);
	}
}
