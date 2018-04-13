package com.jiuqi.web.tjsq.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

/**
 * CRUD公共Dao
 * @author lnn
 *
 */
@SuppressWarnings("rawtypes")
public interface BaseDao {
	public void add(Object entity);

	public void update(Object entity);

	public void delete(Object entity);

	public List getPage(DetachedCriteria dc, int pageSize, int currentPageNum);

	public int getRecordCount(DetachedCriteria dc);

	public Object getById(Class obj_class, Integer id);
	
	public List queryAll(DetachedCriteria dc);
}
