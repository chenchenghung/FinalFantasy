package model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.hibernate.type.descriptor.sql.LongVarcharTypeDescriptor;

@Entity
@Table(name = "PRODUCT")
public class ProductBean {
	
	@OneToMany(
			mappedBy = "product",cascade = CascadeType.ALL,fetch=FetchType.LAZY
			)	
	private Set<OrderitemBean> orderitems;
	
	public Set<OrderitemBean> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(Set<OrderitemBean> orderitems) {
		this.orderitems = orderitems;
	}
	@Id
	@Column(name = "PID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer pid;
	@Column(name = "PICMAIN")
	private String picmain;
	@Column(name = "PICFIRST")
	private String picfirst;
	@Column(name = "PICSECOND")
	private String picsecond;
	@Column(name = "PICTHIRD")
	private String picthird;
	@Column(name = "PICFOURTH")
	private String picfourth;
	@Column(name = "PRODUCTNAME")
	private String productname;

	@Column(name = "PRODUCTDESC" ,columnDefinition = "text")
	@Type(type = "text")
	private String productdesc;
	@Column(name = "CATEID")
	private Integer cateid;
	@Column(name = "SPEC")
	private String spec;
	@Column(name = "MATERIAL")
	private String material;
	@Column(name = "PRICE")
	private Integer price;
	@Column(name = "SIZE")
	private String size;
	@Column(name = "WEIGHT")
	private String weight;
	@Column(name = "UPDATEDAY")
	private java.util.Date updateday;
	
	@ManyToOne
	@JoinColumn(
			name = "cateid",
			referencedColumnName = "cateid",
			insertable = false,
			updatable = false
			)
	private CategoryBean category;
	
	
	public CategoryBean getCategory() {
		return category;
	}
	public void setCategory(CategoryBean category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "ProductBean [pid=" + pid + ", picmain=" + picmain + ", picfirst=" + picfirst + ", picsecond="
				+ picsecond + ", picthird=" + picthird + ", picfourth=" + picfourth + ", productname=" + productname
				+ ", productdesc=" + productdesc + ", cateid=" + cateid + ", spec=" + spec + ", material="
				+ material + ", price=" + price + ", size=" + size + ", weight=" + weight + ", updateday=" + updateday
				+ "]";
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
	public String getPicfirst() {
		return picfirst;
	}
	public void setPicfirst(String picfirst) {
		this.picfirst = picfirst;
	}
	public String getPicsecond() {
		return picsecond;
	}
	public void setPicsecond(String picsecond) {
		this.picsecond = picsecond;
	}
	public String getPicthird() {
		return picthird;
	}
	public void setPicthird(String picthird) {
		this.picthird = picthird;
	}
	public String getPicfourth() {
		return picfourth;
	}
	public void setPicfourth(String picfourth) {
		this.picfourth = picfourth;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductdesc() {
		return productdesc;
	}
	public void setProductdesc(String productdesc) {
		this.productdesc = productdesc;
	}
	
	public Integer getCateid() {
		return cateid;
	}
	public void setCateid(Integer cateid) {
		this.cateid = cateid;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public java.util.Date getUpdateday() {
		return updateday;
	}
	public void setUpdateday(java.util.Date updateday) {
		this.updateday = updateday;
	}

	
	
}


//pid int (8) not null auto_increment,
//picmain varchar(150) not null,
//picfirst varchar(150) ,
//	picsecond varchar(150),
//	picthird varchar(150), 
//	picfourth varchar(150) ,
//	productname varchar(20) not null,
//	productdesc text not null,
//	category varchar(20) not null,
//	spec varchar(30) not null,
//	material varchar(30) not null,
//	price int (10) not null,
//	size varchar(50) not null,
//	weight varchar(20) not null,
//	updateday date ,