package model.dao;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ProductBean;
import model.ProductDAO;
import model.hibernate.HibernateUtil;


@Repository
public class ProductDAOHibernate implements ProductDAO {

//	public static void main(String[] args) {
//		SessionFactory sessionFactory=HibernateUtil.getSessionfactory();
//		Session session= sessionFactory.getCurrentSession();
//		Transaction trx = session.beginTransaction();
		
		//select
//		ProductDAO productDAO= new ProductDAOHibernate(sessionFactory);
//		ProductBean bean=productDAO.select(666002);
//		List<ProductBean> beans=productDAO.select();
//		System.out.println(beans);
		
		//insert
//		ProductBean bean1= new ProductBean();
//		bean1.setPicmain("picmaintest");
//		bean1.setProductname("望遠鏡");
//		bean1.setProductdesc("哈伯天文");
//		bean1.setCateid(2);
//		bean1.setSpec("黑色");
//		bean1.setMaterial("鈦合金");
//		bean1.setPrice(4500);
//		bean1.setSize("H6xW20xD6");
//		bean1.setWeight("500g");
//		
//		ProductBean insert=productDAO.insert(bean1);
//		System.out.println(insert);
		
		
		//update
//		ProductBean bean=productDAO.select(666002);
//		bean.setMaterial("甲烷");
//		ProductBean result=productDAO.update(bean);
//		System.out.println(result);
//		
//		
//		trx.commit();
//		session.close();
//		sessionFactory.close();
//	}

	
//	@Autowired
//	private SessionFactory sessionFactory;
//	public ProductDAOHibernate(SessionFactory sessionFactory) {
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
	public ProductBean select(Integer id) {
		if(id!=null) {
			return this.getSession().get(ProductBean.class, id);
		}
		return null;
	}

	@Override
	public List<ProductBean> select() {
		return this.getSession().createQuery("From ProductBean",ProductBean.class).list();
	}
	//TODO  可能存在商品同名
	@Override
	public ProductBean insert(ProductBean bean) {
		if(bean!=null && bean.getProductname()!=null ) {
			
			// 可能存在商品同名問題
				Integer pk =(Integer) this.getSession().save(bean);
				ProductBean result=this.getSession().get(ProductBean.class, pk);
				
				return result;
		}
		return null;
	}
	
	//改成在controller get bean後 set好 再呼叫update,不在 dao中放參數 
	@Override
	public ProductBean update(ProductBean bean) {
		if(bean!=null && bean.getPid()!=null) {
			ProductBean temp = this.getSession().get(ProductBean.class, bean.getPid());
			if(temp!=null) {
				return (ProductBean) this.getSession().merge(bean);
			}
		}
		return null;
	}

	@Override
	public boolean delete(Integer id) {
		if(id!=null) {
			ProductBean temp = this.getSession().get(ProductBean.class, id);
			if(temp!=null) {
				this.getSession().delete(temp);
				return true;
			}
		}
		return false;
	}

	//要加分頁
	@Override
	public List<ProductBean> selectbycate(Integer cateid) {
		String hql = "FROM ProductBean WHERE cateid=:cateid";
		
		return this.getSession().createQuery(hql,ProductBean.class)
				.setParameter("cateid", cateid)
				.list();
	}
	
	
}
	
	
	

