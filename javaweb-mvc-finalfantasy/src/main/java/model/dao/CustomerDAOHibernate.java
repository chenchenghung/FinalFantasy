package model.dao;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.CategoryBean;
import model.CustomerBean;
import model.CustomerDAO;
import model.hibernate.HibernateUtil;

@Repository
public class CustomerDAOHibernate implements CustomerDAO {

//	public static void main(String[] args) {
//		SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//		Session session= sessionFactory.getCurrentSession();
//		Transaction trx = session.beginTransaction();
//		
//		CustomerDAO customerDAO=new CustomerDAOHibernate(sessionFactory);
		
		//select
		//使用關聯語法依照分類查詢商品
//		CustomerBean bean=customerDAO.select("myfirstid");
//		System.out.println(bean);
		
//		Set<CustomerBean> beans=bean.getProducts();
//		for(CustomerBean unitbean:beans) {
//			System.out.println(unitbean);
//		}
		
		//update
//		CustomerBean bean=customerDAO.select("myfirstid");
//		bean.setFirstname("天天");
//		CustomerBean result=customerDAO.update(bean);
//		System.out.println(result);

		//select all
//		List<CustomerBean> cates= customerDAO.select();
//		for(CustomerBean cate:cates) {
//			System.out.println(cate);
//		}
		
//		trx.commit();
//		session.close();
//		sessionFactory.close();
		
//	}

	@PersistenceContext
	private Session session;

	public Session getSession() {
		return session;
	}
	
	@Override
	public CustomerBean select(String uid) {
		if(uid!=null) {
			return this.getSession().get(CustomerBean.class, uid);
		}
		return null;
	}
	@Override
	public List<CustomerBean> select() {
		return this.getSession().createQuery("From CustomerBean",CustomerBean.class).list();
	}
	@Override
	public CustomerBean insert(CustomerBean bean) {
		if(bean!=null && bean.getUid()!=null ) {
			
			String pk =(String) this.getSession().save(bean);
			CustomerBean result=this.getSession().get(CustomerBean.class, pk);
			
			return result;
	}
		return null;
	}
	@Override
	public CustomerBean update(CustomerBean bean) {
		if(bean!=null && bean.getUid()!=null) {
			CustomerBean temp = this.getSession().get(CustomerBean.class, bean.getUid());
			if(temp!=null) {
				return (CustomerBean) this.getSession().merge(bean);
			}
		}
		return null;
	}
	@Override
	public boolean delete(String uid) {
		if(uid!=null) {
			CustomerBean temp = this.getSession().get(CustomerBean.class, uid);
			if(temp!=null) {
				this.getSession().delete(temp);
				return true;
			}
		}
		return false;
	}
}
