package com.jiuqi.web.tjsq.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.jiuqi.web.tjsq.dao.BaseDao;
import com.jiuqi.web.tjsq.service.BaseService;

/**
 * 公共实现类Impl
 * @author lnn
 *
 */
@Component("baseService")
@Transactional
public class BaseServiceImpl implements BaseService{
	
	@Autowired
	protected BaseDao baseDao;
	@Override
	public void add(Object entity) {
		baseDao.add(entity);
	}

	@Override
	public void update(Object entity) {
		baseDao.update(entity);
	}

	@Override
	public void delete(Object entity) {
		baseDao.delete(entity);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List getPage(DetachedCriteria dc, int pageSize, int currentPageNum) {
		return baseDao.getPage(dc, pageSize, currentPageNum);
	}

	@Override
	public int getRecordCount(DetachedCriteria dc) {
		return baseDao.getRecordCount(dc);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Object getById(Class obj_class, Integer id) {
		return baseDao.getById(obj_class, id);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List queryAll(DetachedCriteria dc) {
		return baseDao.queryAll(dc);
	}

}
