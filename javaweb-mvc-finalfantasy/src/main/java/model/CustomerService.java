package model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CustomerService {
	@Autowired
	private CustomerDAO customerDAO;

	@Transactional(readOnly = true)
	public CustomerBean login(String uid, String password) {
		CustomerBean bean = customerDAO.select(uid);
		if(bean!=null) {
			if(password!=null) {
				String pass = bean.getPassword();
				String temp = password;
				if(pass.equals(temp)) {
					return bean;
				}
			}
		}
		return null;
	}
	
	public boolean changePassword(String username, String oldPassword, String newPassword) {
		CustomerBean bean = this.login(username, oldPassword);
		if(bean!=null) {
			String temp = newPassword;
			bean.setPassword(temp);
			CustomerBean newbean=customerDAO.update(bean);
			return true;
		}
		return false;
	}
	
	public CustomerBean insert(CustomerBean bean) {
		CustomerBean result = null;
		if(bean!=null) {
			result = customerDAO.insert(bean);
		}
		return result;
	}
}
