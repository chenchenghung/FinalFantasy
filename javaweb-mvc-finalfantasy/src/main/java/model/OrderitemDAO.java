package model;

import java.util.List;

public interface OrderitemDAO {
	//查詢單筆資料
	public abstract OrderitemBean select(Integer id);
	//新增單筆資料
	public abstract boolean insert(OrderitemBean bean);
	//
	public abstract OrderitemBean update(OrderitemBean bean);
	//
	public abstract boolean delete(Integer id);
}
