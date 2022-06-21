package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CUSTOMER")
public class CustomerBean {
	
	@Id
	@Column(name = "UID")
	private String uid;
	@Column(name = "PHONE")
	private String phone;
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "LASTNAME")
	private String lastname;
	@Column(name = "FIRSTNAME")
	private String firstname;
	@Column(name = "BIRTHDAY")
	private java.util.Date birthday;
	@Column(name = "NICKNAME")
	private String nickname;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "SEX")
	private String sex;
	@Column(name = "CODE")
	private String code;
	@Column(name = "CITY")
	private String city;
	@Column(name = "ADDRESS")
	private String address;
	
	
	
	
	@Override
	public String toString() {
		return "CustomerBean [uid=" + uid + ", phone=" + phone + ", password=" + password + ", lastname=" + lastname
				+ ", firstname=" + firstname + ", birthday=" + birthday + ", nickname=" + nickname + ", email=" + email
				+ ", sex=" + sex + ", code=" + code + ", city=" + city + ", address=" + address + "]";
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public java.util.Date getBirthday() {
		return birthday;
	}
	public void setBirthday(java.util.Date birthday) {
		this.birthday = birthday;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
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
	

}