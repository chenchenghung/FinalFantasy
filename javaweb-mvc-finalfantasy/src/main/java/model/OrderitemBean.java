package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="ORDERITEM")
public class OrderitemBean {
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(
			name = "orderid",
			referencedColumnName = "orderid",
			insertable = false,
			updatable = false
			)
	private OrdersBean orders;
	public OrdersBean getOrders() {
		return orders;
	}
	public void setOrders(OrdersBean orders) {
		this.orders = orders;
	}
	@ManyToOne
	@JoinColumn(
			name = "pid",
			referencedColumnName = "pid",
			insertable = false,
			updatable = false
			)
	private ProductBean product;
	public ProductBean getProduct() {
		return product;
	}
	public void setProduct(ProductBean product) {
		this.product = product;
	}
	
	
	
	
	@Column(name = "ORDERID")
	private Integer orderid;
	@Column(name = "PID")
	private Integer pid;
	@Column(name = "PICMAIN")
	private String picmain;
	@Column(name = "PRODUCTNAME")
	private String productname;
	@Column(name = "PRICE")
	private Integer price;

	@Column(name = "QTY")
	private Integer qty;
	@Column(name = "DISCOUNT")
	private Double discount;
	@Override
	public String toString() {
		return "OrderitemBean [id=" + id + " , pid=" + pid + ", picmain=" + picmain
				+ ", productname=" + productname + ", price=" + price + ", qty=" + qty + ", discount=" + discount + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPicmain() {
		return picmain;
	}
	public void setPicmain(String picmain) {
		this.picmain = picmain;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}

}
