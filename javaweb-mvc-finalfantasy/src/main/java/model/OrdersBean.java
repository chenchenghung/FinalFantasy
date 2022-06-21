package model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ORDERS")
public class OrdersBean {
	
	
	@OneToMany(
			mappedBy = "orders",cascade = CascadeType.ALL,fetch=FetchType.LAZY
			)
	private Set<OrderitemBean> orderitems;
	
	public Set<OrderitemBean> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(Set<OrderitemBean> orderitems) {
		this.orderitems = orderitems;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderid;
	
	@Column(name="UID")
	private String uid;
	@Column(name="ORDERNAME")
	private String ordername;
	@Override
	public String toString() {
		return "OrdersBean [orderid=" + orderid +  ", uid=" + uid +  ", ordername=" + ordername + ", phone=" + phone + ", orderdate="
				+ orderdate + ", code=" + code + ", city=" + city + ", address=" + address + ", orderstatus="
				+ orderstatus  + ", totalamount="
						+ totalamount + "]";
	}
	@Column(name="PHONE")
	private String phone;
	@Column(name="ORDERDATE")
	private java.util.Date orderdate;
	@Column(name="CODE")
	private String code;
	@Column(name="CITY")
	private String city;
	@Column(name="ADDRESS")
	private String address;
	@Column(name = "TOTALAMOUNT")
	private Integer totalamount;
	@Column(name="ORDERSTATUS")
	private Integer orderstatus;
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getOrdername() {
		return ordername;
	}
	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public java.util.Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(java.util.Date orderdate) {
		this.orderdate = orderdate;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public Integer getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(Integer totalamount) {
		this.totalamount = totalamount;
	}
	public Integer getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(Integer orderstatus) {
		this.orderstatus = orderstatus;
	}
	
	
	
}