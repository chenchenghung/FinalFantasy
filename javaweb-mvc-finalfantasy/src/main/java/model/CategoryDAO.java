package model;

import java.util.List;

public interface CategoryDAO {
	//查詢單筆資料
	public abstract CategoryBean select(Integer id);
	//查全部()
	public abstract List<CategoryBean> select();
	//新增單筆資料
	public abstract CategoryBean insert(CategoryBean bean);
	//後台訂單系統 取得訂單 
	public abstract CategoryBean update(CategoryBean bean);
	//刪除一筆資料
	public abstract boolean delete(Integer id);
}
