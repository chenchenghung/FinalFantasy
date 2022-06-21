package model.dao;


import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.OrderitemBean;
import model.OrderitemDAO;
import model.ProductDAO;
import model.hibernate.HibernateUtil;


@Repository
public class OrderitemDAOHibernate implements OrderitemDAO {

//	public static void main(String[] args) {
//		SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//		Session session= sessionFactory.getCurrentSession();
//		Transaction trx = session.beginTransaction();
//		
//		
//		OrderitemDAO orderitemDAO= new OrderitemDAOHibernate(sessionFactory);
		//select
//		OrderitemBean bean=orderitemDAO.select(2);
//		System.out.println(bean);
		
		//update
//		OrderitemBean bean=orderitemDAO.select(2);
//		bean.setQty(4);
//		OrderitemBean result=orderitemDAO.update(bean);
//		System.out.println(result);
		
		
//		trx.commit();
//		session.close();
//		sessionFactory.close();
//	}
	
//	@Autowired
//	private SessionFactory sessionFactory;
//	public OrderitemDAOHibernate(SessionFactory sessionFactory) {
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
	public OrderitemBean select(Integer id) {
		if(id!=null) {
			return this.getSession().get(OrderitemBean.class, id);
		}
		return null;
	}

	@Override
	public boolean insert(OrderitemBean bean) {
		if(bean!=null && bean.getOrderid()!=null ) {
			
			Integer pk =(Integer) this.getSession().save(bean);
			if (pk!=null && !pk.equals(0)) {
				return true;
			}
		}	
		return false;
	
	}
	@Override
	public OrderitemBean update(OrderitemBean bean) {
		if(bean!=null && bean.getId()!=null) {
			OrderitemBean temp = this.getSession().get(OrderitemBean.class, bean.getId());
			if(temp!=null) {
				return (OrderitemBean) this.getSession().merge(bean);
			}
		}
		return null;
	}
	@Override
	public boolean delete(Integer id) {
		if(id!=null) {
			OrderitemBean temp = this.getSession().get(OrderitemBean.class, id);
			if(temp!=null) {
				this.getSession().delete(temp);
				return true;
			}
		}	
		return false;
		
	}
	
}
