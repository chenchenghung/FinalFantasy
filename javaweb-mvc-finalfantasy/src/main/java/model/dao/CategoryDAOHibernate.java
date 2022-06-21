package model.dao;

import java.util.List;
import java.util.Set;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.CategoryBean;
import model.CategoryDAO;

import model.hibernate.HibernateUtil;


@Repository
public class CategoryDAOHibernate implements CategoryDAO {
//
//	public static void main(String[] args) {
//		SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//		Session session= sessionFactory.getCurrentSession();
//		Transaction trx = session.beginTransaction();
//		
//		
//		CategoryDAO categoryDAO= new CategoryDAOHibernate(sessionFactory);
		
		//select
		//使用關聯語法依照分類查詢商品
//		CategoryBean bean=categoryDAO.select(1);
//		Set<ProductBean> beans=bean.getProducts();
//		for(ProductBean unitbean:beans) {
//			System.out.println(unitbean);
//		}
		
		//update
//		CategoryBean bean=categoryDAO.select(3);
//		bean.setCatename("燈光照明");
//		CategoryBean result=categoryDAO.update(bean);
//		System.out.println(result);

		//select all
//		List<CategoryBean> cates= categoryDAO.select();
//		for(CategoryBean cate:cates) {
//			System.out.println(cate);
//		}
		
//		trx.commit();
//		session.close();
//		sessionFactory.close();
//		
//	}
	
	
//	@Autowired
//	private SessionFactory sessionFactory;
//	public CategoryDAOHibernate(SessionFactory sessionFactory) {
//		this.sessionFactory = sessionFactory;
//	}
//	public Session getSession() {
//		return sessionFactory.getCurrentSession();
//	}

	@PersistenceContext
	private Session session;
	
	public Session getSession() {
		return session;
	}
	
	@Override
	public CategoryBean select(Integer id) {
		if(id!=null) {
			return this.getSession().get(CategoryBean.class, id);
		}
		return null;
	}

	@Override
	public CategoryBean insert(CategoryBean bean) {
		if(bean!=null && bean.getCateid()!=null ) {
			
				Integer pk =(Integer) this.getSession().save(bean);
				CategoryBean result=this.getSession().get(CategoryBean.class, pk);
				
				return result;
		}
		return null;
	}
	@Override
	public CategoryBean update(CategoryBean bean) {
		if(bean!=null && bean.getCateid()!=null) {
			CategoryBean temp = this.getSession().get(CategoryBean.class, bean.getCateid());
			if(temp!=null) {
				return (CategoryBean) this.getSession().merge(bean);
			}
		}
		return null;
	}
	@Override
	public boolean delete(Integer id) {
		if(id!=null) {
			CategoryBean temp = this.getSession().get(CategoryBean.class, id);
			if(temp!=null) {
				this.getSession().delete(temp);
				return true;
			}
		}
		return false;
	}
	@Override
	public List<CategoryBean> select() {
		return this.getSession().createQuery("From CategoryBean",CategoryBean.class).list();

	}
}
