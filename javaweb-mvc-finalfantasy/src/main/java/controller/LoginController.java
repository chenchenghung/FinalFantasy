package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.CustomerBean;
import model.CustomerService;
import model.ProductBean;
import model.ProductService;



@Controller
@SessionAttributes(value= {"cart"})
public class LoginController {
	
	@RequestMapping(
			path= {"/pages/logout.controller"}
			)
	public String logout(HttpSession httpsession) {
			System.out.println("logout");
			httpsession.removeAttribute("cart");
		return "/";
	}
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(
			path= {"/secure/login.controller"}
			)
	public String handlermethod(Model model,String username,String password,HttpSession session) {
		System.out.println("hahaha");

		//接收資料
		//驗證資料
		Map<String,String> errors=new HashMap<String,String>();
		model.addAttribute("errors",errors);
		if(username==null || username.length()==0) {
			errors.put("username", "Please enter ID for login(mvc)");
		}
		if(password==null || password.length()==0) {
			errors.put("password", "Please enter PWD for login(mvc)");
		}
		
		if(errors!=null && !errors.isEmpty()) {
			return "/secure/login";
		}
		CustomerBean bean = customerService.login(username, password);

		if(bean==null) {
			errors.put("password", "login.failed");
			return "/secure/login";
		} else {
			session.setAttribute("user", bean);
			return "redirect:/";
		}
			
	}
	@Autowired
	private CustomerService customerService;
	@RequestMapping(
			path = {"/pages/register.controller"}
			)
	public String handlermethodregister(Model model,String uid,String phone, String password
			,String lastname, String firstname, String birthday, String nickname, String email
			,String sex) {
		
		System.out.println("register controll");
		
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);

		if(uid==null || uid.length()==0) {
			errors.put("username", "login.username.required");
		}
		if(password==null || password.length()==0) {
			errors.put("password","login.password.required");
		}

		if(errors!=null && !errors.isEmpty()) {
			return "/pages/newaccount";
		}
		
		CustomerBean bean=new CustomerBean();
		bean.setUid(uid);
		bean.setPhone(phone);
		bean.setPassword(password);
		bean.setLastname(lastname);
		bean.setFirstname(firstname);
		java.util.Date birth=null;
		try {
			birth=new SimpleDateFormat("yyyy-MM-dd").parse(birthday);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}   
		bean.setBirthday(birth);
		bean.setNickname(nickname);
		bean.setEmail(email);
		bean.setSex(sex);
		
		CustomerBean newbean=customerService.insert(bean);
		
		return "/secure/login";
		
	}
}
