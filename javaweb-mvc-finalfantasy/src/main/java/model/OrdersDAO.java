package model;

import java.util.List;

public interface OrdersDAO {
	
	//新增單筆資料
	public abstract Integer insert(OrdersBean bean);
	
	//用戶查詢所有用戶的訂單 包括 未完成 已完成
	public abstract List<OrdersBean> select(String uid,Integer status);
	
	//用戶/後台查詢單筆訂單中的詳情商品資料
	public abstract List<OrderitemBean> select(Integer orderid);
	//查後台所有訂單
	public abstract List<OrdersBean> select();

	//後台訂單管理系統  修改 收件資料 |      以及下訂的商品數量(留給service)
	public abstract OrdersBean update(Integer qty);
	//刪除一筆資料
	public abstract boolean delete(Integer id);
}
