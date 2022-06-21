package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PathController {
	@RequestMapping(path = {"/"})
	public String handlerMethod1() {
		return "/index";
	}
	@RequestMapping(path = "/secure/login.view")
	public String handlerMethod2() {
		return "/secure/login";
	}
	@RequestMapping(value = "/pages/client.view")
	public String handlerMethod3() {
		return "/pages/client";
	}
	
	
	@RequestMapping(value = "/pages/products.view")
	public String handlerMethod5() {
		return "/pages/products";
	}
	
	@RequestMapping(value = "/pages/productdetail.view")
	public String handlerMethod6() {
		return "/pages/productdetail";
	}

	@RequestMapping(value = "/pages/cartlist.view")
	public String handlerMethod7() {
		return "/pages/cartlist";
	}
	
	
	@RequestMapping(value = "/pages/newaccount.view")
	public String handlerMethod9() {
		return "/pages/newaccount";
	}

}
