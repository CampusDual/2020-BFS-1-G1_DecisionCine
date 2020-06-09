package com.imatia.api.core.service;


import com.ontimize.db.EntityResult;

import java.util.List;
import java.util.Map;


public interface NewService {

	//NEW
	public EntityResult newQuery(Map<String, Object> keyMap, List<String> attrList);
	public EntityResult newInsert(Map<String, Object> attrMap);
	public EntityResult newUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap);
	public EntityResult newDelete(Map<String, Object> keyMap);

}
