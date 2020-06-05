package com.imatia.api.core.service;


import com.ontimize.db.EntityResult;

import java.util.List;
import java.util.Map;


public interface NewService {

	//NEW
	public EntityResult newQuery(Map<?, ?> keyMap, List<?> attrList);
	public EntityResult newInsert(Map<?, ?> attrMap);
	public EntityResult newUpdate(Map<?, ?> attrMap, Map<?, ?> keyMap);
	public EntityResult newDelete(Map<?, ?> keyMap);

}
