package com.imatia.api.core.service;


import com.ontimize.db.EntityResult;

import java.util.List;
import java.util.Map;


public interface NoticiaService {

	//NEW
	public EntityResult noticiaQuery(Map<String, Object> keyMap, List<String> attrList);
	public EntityResult noticiaInsert(Map<String, Object> attrMap);
	public EntityResult noticiaUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap);
	public EntityResult noticiaDelete(Map<String, Object> keyMap);

}
