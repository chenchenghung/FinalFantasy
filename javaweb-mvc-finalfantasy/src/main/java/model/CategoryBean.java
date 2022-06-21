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
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CATEGORY")
public class CategoryBean {
	
	@OneToMany(
			mappedBy = "category", cascade = CascadeType.ALL,fetch=FetchType.LAZY
			)
	private Set<ProductBean> products; 
	
	
	public Set<ProductBean> getProducts() {
		return products;
	}
	public void setProducts(Set<ProductBean> products) {
		this.products = products;
	}
	
	
	@Id
	@Column(name = "CATEID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cateid;
	
	
	@Column(name = "CATENAME")
	private String catename;
	@Override
	public String toString() {
		return "CategoryBean [cateid=" + cateid + ", catename=" + catename + "]";
	}
	public Integer getCateid() {
		return cateid;
	}
	public void setCateid(Integer cateid) {
		this.cateid = cateid;
	}
	public String getCatename() {
		return catename;
	}
	public void setCatename(String catename) {
		this.catename = catename;
	}
	
}
