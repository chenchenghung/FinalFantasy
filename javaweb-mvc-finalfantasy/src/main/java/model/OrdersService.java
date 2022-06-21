package model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class OrdersService {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	@Autowired
	private OrdersDAO ordersDAO;
	@Autowired
	private OrderitemDAO orderitemDAO;
	
	public boolean insert(OrdersBean bean,List<OrderitemBean> orderitems) throws Exception {
		boolean result = false;
		if(bean!=null && orderitems!=null) {
			Integer pk = ordersDAO.insert(bean);
			System.out.println("get and insert orderid="+pk);
			
			for(OrderitemBean orderitem:orderitems) {
				orderitem.setOrderid(pk);
				if (!orderitemDAO.insert(orderitem)) {
					// 訂單品項新增失敗就rollback
					throw new Exception();
				}
			}
			return true;
			
		}
		return result;
	}
}
