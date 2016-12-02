package mystique;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mystique.CartModel.Cart;
import mystique.CartModel.CartDAO;
import mystique.UserRole.UserRoleDao;
import mystique.category.Category;
import mystique.category.CategoryDao;
import mystique.product.product;
import mystique.product.productDao;
import mystique.user.user;
import mystique.user.userDao;

	 @Controller
		public class HelloController
		{ 
		    
		    @Autowired
		    productDao ps;
		 
		    @Autowired
		    CartDAO cs;
		    
		    @Autowired
		    CategoryDao cdao;
		    
		    @Autowired
		    ServletContext context;
		 
		    @Autowired
		    userDao as;
		    
		    @Autowired
		    UserRoleDao urdao;
		    
		    @RequestMapping(value = "/initiateFlow" , method = RequestMethod.GET)
		    public String redirect(HttpServletRequest request) {
		    	
		    	String retval = "";
		    	
		    	if(request.getUserPrincipal() == null)
                  retval = "redirect:/cart?user=none";
		    	else
		    		retval = "redirect:/cart?user=" + request.getUserPrincipal().getName();
		    	return retval;
		    }
		    
		    
		    public String test() {
		    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    	if(auth != null && !auth.getName().equals("anonymousUser")) {
		    		System.out.println(auth.getName());
		    		
		    		return "false";
		    	}
		    	else {
		    		System.out.println("User not present");
		    		return "true";
		    	}
		    	
		    }
		    
		    
		   
		    
			@RequestMapping("/")
			public String home()
			{
				urdao.generateUserRoles();
				
				return "index";
			}
			
			@RequestMapping("/index")
			public ModelAndView index()
			{
				ModelAndView model = new ModelAndView("index");
				model.addObject("message","Mystique.com");
				
				return model ;
			}
			@RequestMapping(value ="/contact")
			public String contact()
			{
				return "contact";
			}
			
			@RequestMapping(value="/AboutUs")
			public String AboutUs()
			{
				
				return "AboutUs";
			}
			
			@RequestMapping(value ="/head-meta")
			public String head_meta()
			{
				return "head-meta";
			}
			@RequestMapping(value ="/head")
			public String head()
			{
				return "head";
			}
			@RequestMapping(value ="/Login")
			public String Login()
			{
				return "Login";
			}
			@RequestMapping(value = "/SignUp")
			public ModelAndView SignUp() {
				ModelAndView mav = new ModelAndView("SignUp");
				mav.addObject("newuser", new user());

				return mav;
			}

			
			@RequestMapping(value ="/signup2")
			public String signup2()
			{
				return "signup2";
			}
			
		
			
			@RequestMapping(value ="/addCategory")
			public ModelAndView addCategory()
			{
			   ModelAndView mav=new ModelAndView("addCategory");
		       mav.addObject("Category",new Category());  
      
                 return mav;
			}

			
		     @RequestMapping(value= "/AddCategoryToDB",method=RequestMethod.POST)
	         public String AddCategoryToDB ( @ModelAttribute("Category")Category c)
		     {
			 ModelAndView model = new ModelAndView("Category");
				
				cdao.insert(c);
				return "redirect:/Category";
			}
		     
		     
		     @RequestMapping("/Category")
		 	public ModelAndView Category() {
		 		ModelAndView mav = new ModelAndView("Category");
		 		
		 		JSONArray jarr = new JSONArray();
		 		
		 		List<Category> list = cdao.getCategories();
		 		System.out.println(list);
		 		
		 		for( Category c:list )
		 		{
		 			JSONObject jobj = new JSONObject();
		 			
		 			jobj.put("Id", c.getId() );
		 			jobj.put("CategoryName", c.getCategoryName());
		 			
		 			jarr.add(jobj);
		 		}
		 		
		 		mav.addObject("Cat", jarr.toJSONString());
		 		
		 		return mav;
		 	}
		 	 
		     
		     
		     @RequestMapping("/updatecategory/{cid}")
		 	public ModelAndView updatecategory( @PathVariable("cid") int cid ) {
		 		
		 		ModelAndView mav = new ModelAndView("updatecategory");
		 		
		 		System.out.println(cid);
		 		
		 		Category c = cdao.getCategory(cid);
		 		
		 		mav.addObject("Category", c);
		 		
		 		return mav;
		 	}
		     
		     @RequestMapping(value = "/UpdateCategoryToDB", method=RequestMethod.POST)
		 	public String UpdateCategoryToDB ( @ModelAttribute("Category")Category c) {
		 		ModelAndView mav = new ModelAndView("Category");
		 		
		 		Category c_old = cdao.getCategory(c.getId());
		 		List<product> list = ps.getAllProducts();
		 		
		 		for( product p : list )
				{
					if( p.getProductCategory().equals(c_old.getCategoryName()) )
					{
						p.setProductCategory(c.getCategoryName());
						ps.update(p);
					}
				}
		 		
		 		cdao.update(c);
		 		
		 		return "redirect:/Category";
		 	
		 	}
		     
		     
		     @RequestMapping(value = "/deletecategory/{cid}")
			 	public String deleteCategory ( @PathVariable("cid")int cid) {
			 		System.out.println(cid);
			 		
			 		Category c = cdao.getCategory(cid);
			 		cdao.delete(cid);
			 		
			 		List<product> list = ps.getAllProducts();
			 		
			 		for(product p:list)
			 		{
			 			if(p.getProductCategory().equals( c.getCategoryName() ) )
			 					{
			 				         p.setProductCategory("-");
			 				         ps.update(p);
			 					}
			 					
			 		}
			 			
			 		
			 		
			 		
			 		return "redirect:/Category";
			 	
			 	}
		    
		     
		     
		     @RequestMapping(value = "/addProduct")
		 	public ModelAndView addProduct() {
		 		ModelAndView mav = new ModelAndView("addProduct");
		 		mav.addObject("Product", new product());
		 		
		 		List<Category> list =cdao.getCategories();
		 		mav.addObject("Categories",list);

		 		return mav;
		 	}
		    
		     @RequestMapping("/Product")
		 	public ModelAndView product() {
		 		ModelAndView mav = new ModelAndView("Product");
		 		
		 		JSONArray jarr = new JSONArray();
		 		
		 		List<product> list = ps.getAllProducts();
		 		System.out.println(list);
		 		
		 		for( product p:list )
		 		{
		 			JSONObject jobj = new JSONObject();
		 			
		 			jobj.put("ProductId", p.getId() );
		 			jobj.put("ProductName", p.getProductName());
		 			jobj.put("ProductCategory", p.getProductCategory());
		 			jobj.put("ProductDescription", p.getProductDescription());
		 			jobj.put("ProductQty", p.getProductQty());
		 			jobj.put("ProductPrice", p.getProductPrice());
		 			jobj.put("ProductImage", p.getProductImage());
		 			jarr.add(jobj);
		 		}
		 		
		 		System.out.println( jarr.toJSONString() );
		 		
		 		mav.addObject("pro", jarr.toJSONString());
		 		
		 		return mav;
		 	}
		 	
		   
		     
		     @RequestMapping(value = "/AddProductToDB", method=RequestMethod.POST)
		 	public String AddProductToDB ( @ModelAttribute("Product")product p) {
		 		
		 		System.out.println(p);
		 		
		 		ps.insert(p);
		 		product i1 = ps.getProductWithMaxId();

		 		System.out.println(i1.getId());

		 		try {
		 			String path = context.getRealPath("/");

		 			System.out.println(path);

		 			File directory = null;

		 			// System.out.println(ps.getProductWithMaxId());

		 			if (p.getProductFile().getContentType().contains("image")) {
		 				directory = new File(path + "\\resources\\images");

		 				System.out.println(directory);

		 				byte[] bytes = null;
		 				File file = null;
		 				bytes = p.getProductFile().getBytes();

		 				if (!directory.exists())
		 					directory.mkdirs();

		 				file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_"
		 						+ i1.getId() + ".jpg");

		 				System.out.println(file.getAbsolutePath());

		 				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
		 				stream.write(bytes);
		 				stream.close();

		 			}

		 			i1.setProductImage("resources/images/image_" + i1.getId() + ".jpg");

		 			ps.update(i1);
		 		} catch (Exception e) {
		 			e.printStackTrace();
		 		}
		 		return "redirect:/Product";
		 	
		 	}
		    
		     @RequestMapping("/updateproduct/{pid}")
				public ModelAndView updateproduct(@PathVariable("pid") int pid ) {
					
					ModelAndView mav = new ModelAndView("updateproduct");
					
					System.out.println(pid);
					
					product p = ps.getProduct(pid);
					
					mav.addObject("Product", p);
					
					List<Category> list =cdao.getCategories();
			 		mav.addObject("Categories",list);
					
					return mav;
			}
		     
		     @RequestMapping(value = "/UpdateProductToDB", method=RequestMethod.POST)
		 	public String UpdateProductToDB ( @ModelAttribute("Product") product p) {
		 		
		    	 try{
		    		 String path = context.getRealPath("/");
		    		 
		    		 System.out.println(path);
		    		 File directory = null;
		    		 
		    		 if(p.getProductFile().getContentType().contains("image")){
		    			 directory = new File(path + "\\resources\\images");
		    			 
		    			 System.out.println(directory);
		    			 
		    			 byte[] bytes = null;
		    			 File file = null;
		    			 bytes = p.getProductFile().getBytes();
		    			 
		    			 if(!directory.exists())
		    				 directory.mkdirs();
		    			 
		    			 file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_"
		    					 + p.getId() + ".jpg");
		    			 
		    			 System.out.println(file.getAbsolutePath());
		    			 
		    			 BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
		    			 stream.write(bytes);
		    			 stream.close();
		    			 
		    		 }
		    		 
		    		 p.setProductImage("resources/images/image_" + p.getId() + ".jpg");
		    		 ps.update(p);
		    	 } catch (Exception e) {
		    		 e.printStackTrace();
		    	 }
		    	 
		    	 return "redirect:/Product";
		     }
		    		 
		    	 
		    	 
		    	 
		    
		     
		     @RequestMapping(value = "/deleteproduct/{pid}")
		 	public String deleteProduct(@PathVariable("pid") int pid) {

		    	 System.out.println(pid);

		 		ps.delete(pid);
		 		return "redirect:/Product";
		 	 }
		     
		     
		     @RequestMapping(value = "/insertuser", method = RequestMethod.POST)
   		 	public ModelAndView insertUser(@Valid @ModelAttribute("newuser") user p, BindingResult bind) {

		 		ModelAndView mav = new ModelAndView("SignUp");

		 		System.out.println("In User Insert");

		 		if (bind.hasErrors()) {
		 			mav.addObject("newuser", p);
		 		} else {
		 			if (p.getPassword().equals(p.getCPassword())) {
		 				List<user> list = as.getAllUsers();

		 				System.out.println(list);

		 				boolean usermatch = false;

		 				for (user u : list) {
		 					if (u.getUsername().equals(p.getUsername())) {
		 						usermatch = true;
		 						break;
		 					}
		 				}

		 				if (usermatch == false) {
		 					as.insertUser(p);

		 					mav.addObject("newuser", new user());

		 					mav.addObject("success", "success");
		 				} else {
		 					mav.addObject("newuser", p);

		 					mav.addObject("useralreadyexists", "useralreadyexists");
		 				}
		 			} else {
		 				mav.addObject("newuser", p);

		 				mav.addObject("passwordmismatch", "passwordmismatch");
		 			}

		 		}

		 		return mav;
		 	}
		     
		 
		     
	 
	 
	 @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
		public ModelAndView loginpage() {

			ModelAndView mav = new ModelAndView("loginpage");

			return mav;

		}
	 
	 @RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) 
			{

				System.out.println("In LogOut");
				new SecurityContextLogoutHandler().logout(request, response, auth);

			}

			return "index";
		}
	 
	 @RequestMapping(value = "/view/{productID}")
		public ModelAndView addproduct1(@PathVariable("productID") int pid) {
			ModelAndView mav = new ModelAndView("view");

			System.out.println(pid);

			product p = ps.getProduct(pid);

			if (p != null) {

				mav.addObject("ProductName", p.getProductName());
				mav.addObject("ProductDescription", p.getProductDescription());
				mav.addObject("ProductCategory", p.getProductCategory());
				mav.addObject("ProductPrice", p.getProductPrice());
				mav.addObject("ProductQty", p.getProductQty());
				mav.addObject("ProductImg", p.getProductImage());
				mav.addObject("ProductId", p.getId());
			
			}

			return mav;

		}
		

	 @RequestMapping(value = "/addToCart")
		public String addToCart(HttpServletRequest request) {

			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null && !auth.getName().equals("anonymousUser")) {
				System.out.println(request.getParameter("pid"));
				System.out.println(request.getParameter("pqty"));

				int qty = 1;

				try {
					qty = Integer.parseInt(request.getParameter("pqty"));

					if (!(qty >= 1 && qty <= 10))
						throw new Exception();
				} catch (Exception e) {
					System.out.println("Invalid Qty");
				}

				Cart c = new Cart();

				c.setProductID(request.getParameter("pid"));
				c.setQty("" + qty);

				product p = ps.getProduct(Integer.parseInt(request.getParameter("pid")));

				c.setName(p.getProductName());
				c.setPrice(p.getProductPrice());

				c.setUserName(auth.getName());

				cs.add(c);

			}

			return "redirect:initiateFlow";

		}

	 
	 
	 
		}
	 
	
	