package com.imatia.model.core.service;


import com.imatia.api.core.service.NoticiaService;
import com.imatia.model.core.dao.NoticiaDao;
import com.ontimize.db.EntityResult;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("NoticiaService")
@Lazy
public class NoticiaServiceImpl implements NoticiaService {

	@Autowired
	private NoticiaDao noticiaDao;

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;


	@Override
	public EntityResult noticiaQuery(Map<String, Object> keyMap, List<String> attrList) {
		return this.daoHelper.query(this.noticiaDao, keyMap, attrList);
	}

	@Override
	public EntityResult noticiaInsert(Map<String, Object> attrMap) {
		return this.daoHelper.insert(this.noticiaDao, attrMap);
	}

	@Override
	public EntityResult noticiaUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) {
		return this.daoHelper.update(this.noticiaDao, attrMap, keyMap);
	}

	@Override
	public EntityResult noticiaDelete(Map<String, Object> keyMap) {
		return this.daoHelper.delete(this.noticiaDao, keyMap);
	}
}
