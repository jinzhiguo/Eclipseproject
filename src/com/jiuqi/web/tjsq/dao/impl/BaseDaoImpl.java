package com.jiuqi.web.tjsq.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.jiuqi.web.tjsq.dao.BaseDao;

/**
 * CRUD公共DaoImpl
 * @author lnn
 *
 */
@Component
@Transactional
public class BaseDaoImpl implements BaseDao{
	
	@Autowired
	public SessionFactory sessionFactory;
	
	/*
	 * 保存
	 */
	@Override
	public void add(Object entity) {
		Session session = sessionFactory.getCurrentSession();
		session.save(entity);
	}
	
	/*
	 * 修改
	 */
	@Override
	public void update(Object entity) {
		Session session = sessionFactory.getCurrentSession();
		session.update(entity);
	}
	
	/*
	 * 删除
	 */
	@Override
	public void delete(Object entity) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(entity);
	}
	
	
	/* 
	 * 获取分页数据
	 */
	@SuppressWarnings("rawtypes")
	@Override
	public List getPage(DetachedCriteria dc, int pageSize, int currentPageNum) {
		Session session = sessionFactory.getCurrentSession();
		Criteria cri = dc.getExecutableCriteria(session);
		int firstResult = (currentPageNum - 1) * pageSize;
		cri.setFirstResult(firstResult);
		cri.setMaxResults(pageSize);
		return cri.list();
	}

	@Override
	public int getRecordCount(DetachedCriteria dc) {
		Session session = sessionFactory.getCurrentSession();
		Criteria cri = dc.getExecutableCriteria(session);
		int count = cri.list().size();
		return count;
	}
	
	/*
	 * 根据主键获取实体
	 */
	@SuppressWarnings("rawtypes")
	@Override
	public Object getById(Class obj_class, Integer id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(obj_class, id);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List queryAll(DetachedCriteria dc) {
		Session session = sessionFactory.getCurrentSession();
		return dc.getExecutableCriteria(session).list();
	}

}
