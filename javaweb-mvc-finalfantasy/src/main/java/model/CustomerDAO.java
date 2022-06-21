package model;

import java.util.List;

public interface CustomerDAO {
	//查詢單筆資料
	public abstract CustomerBean select(String uid);
	//查全部()
	public abstract List<CustomerBean> select();
	//新增單筆資料
	public abstract CustomerBean insert(CustomerBean bean);
	//後台訂單系統 取得訂單 
	public abstract CustomerBean update(CustomerBean bean);
	//刪除一筆資料
	public abstract boolean delete(String uid);
}
