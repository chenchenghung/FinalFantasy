package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.xdevapi.JsonArray;

import model.ProductBean;
import model.ProductService;

@CrossOrigin
@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(
			path= {"/pages/products"}
			,produces="application/json;charset=utf-8"
			)
	
	public @ResponseBody String handlermethod(Model model,HttpSession session) {

		System.out.println("hahaha");
		
//呼叫model
		List<ProductBean> products = productService.select(null);
//		for(ProductBean product:products) {
//			System.out.println(product);
//		}
		model.addAttribute("select",products);
//根據model執行結果，導向view
		
		//json
		JSONArray array=new JSONArray();
		for(ProductBean product:products) {
		System.out.println(product);
		JSONObject obj=new JSONObject();
		obj.put("picmain", product.getPicmain());
		obj.put("pid", product.getPid());
		obj.put("productname", product.getProductname());
		obj.put("productdesc", product.getProductdesc());
		obj.put("price", product.getPrice());
		array.put(obj);
		}
		return array.toString();
		
//		return "/pages/products";
	
	}
	
	
	@GetMapping(
			path= {"/pages/products/detail/{pid}"}
			,produces="application/json;charset=utf-8"
			)
	@ResponseBody
	public String detailmethod(@PathVariable Integer pid,Model model,HttpSession session) {

		System.out.println("detail");
		//jsp版本
		ProductBean bean=new ProductBean();
		bean.setPid(pid);
		ProductBean product = productService.select(bean).get(0);
//		System.out.println(product);
		
//		model.addAttribute("select",product);
		
		//json版本
		JSONObject obj=new JSONObject();
		obj.put("pid", product.getPid());
		obj.put("picmain", product.getPicmain());
		obj.put("picfirst", product.getPicfirst());
		obj.put("picsecond", product.getPicsecond());
		obj.put("picthird",product.getPicthird());
		obj.put("picfourth",product.getPicfourth());
		obj.put("productname", product.getProductname());
		obj.put("productdesc", product.getProductdesc());
		obj.put("cateid", product.getCateid());
		obj.put("spec", product.getSpec());
		obj.put("material", product.getMaterial());
		obj.put("price", product.getPrice());
		obj.put("size", product.getSize());
		obj.put("weight", product.getWeight());
		
		
		
		return obj.toString();
	
	}
	
	
	@RequestMapping(
			path= {"/pages/products/category/{cateid}"}
			,produces="application/json;charset=utf-8"
			)
	@ResponseBody
	public String prodcutByCategory(@PathVariable Integer cateid,Model model) {

		System.out.println(cateid);
		
		//jsp頁面
		ProductBean bean=new ProductBean();
		bean.setCateid(cateid);
		List<ProductBean> products = productService.select(bean);
		
		model.addAttribute("select",products);
		//json頁面
		List<HashMap<String,Object>> cateitems=new ArrayList<>();
		for(ProductBean product:products) {
			HashMap<String,Object> item= new HashMap<String, Object>();
			
			item.put("pid", product.getPid());
			item.put("picmain", product.getPicmain());
			item.put("productname",product.getProductname());
			item.put("productdesc", product.getProductdesc());
			item.put("price", product.getPrice());
			
			System.out.println(product.getProductname());
			System.out.println(product.getProductdesc());
			cateitems.add(item);
		}
		ObjectMapper obj = new ObjectMapper();
		String jsonObject = null;
		try {
			jsonObject = obj.writeValueAsString(cateitems);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return jsonObject;
	
	}
}
