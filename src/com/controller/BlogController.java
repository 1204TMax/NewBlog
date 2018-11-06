package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Service.BlogServiceImpl;
import com.Service.UserServiceImpl;
import com.Service.BlogService;
import com.po.Blog;
import com.po.User;
import com.getip.getIP;
@Controller
public class BlogController {
	@Resource(name="BlogServiceImpl")
	private BlogServiceImpl BlogServiceImpl;
	@Resource(name="UserServiceImpl")
	private UserServiceImpl UserServiceImpl;
	//private static final Log logger = LogFactory.getLog(UserController.class);

	@RequestMapping(value="/selectallblog")
	public String selectallBlog(Model model){
		List<Blog> blogs = BlogServiceImpl.selectallBlog();
		model.addAttribute("Blogs", blogs);
		return "NewFile.jsp";
	}
	
	@RequestMapping(value="/selectblogbyid")
	public String selectblogbyid(int blogId,Model model){
		Blog blog = (Blog) BlogServiceImpl.selectblogbyid(blogId);
		//User user = (User) BlogServiceImpl.getusername(blogId);
		model.addAttribute(blog);
		int userid = blog.getUserId();
		User user = UserServiceImpl.selectuserByid(userid);
		model.addAttribute(user);
		
		//int userid = userid;
		//model.addAttribute(userid);
		return "blogcontent.jsp";
	}
	
	@RequestMapping(value="/updatablogbyid")
	public String updatablogbyid(Blog blog,Model model){
		BlogServiceImpl.updatablogbyid(blog);;
		this.BlogServiceImpl.updatablogbyid(blog);
		return "qwe";
	}
	
	@RequestMapping(value="/insertblogbyid")
	public String insertblogbyid(Blog record){
		BlogServiceImpl.insertblogbyid(record);
		return "qwe";
	}
	
	@RequestMapping(value="/delblogbyid")
	public String delblogbyid(int blogId,Model model){
		BlogServiceImpl.delblogbyid(blogId);
		this.selectallBlog(model);
		return "qwe";
	}

	@RequestMapping(value="/insertblog")
	public String insertblog(Blog blog,Model model,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Integer userid = user.getUserId();
		blog.setUserId(userid);
		Integer blogid = blog.getBlogId();
		String description = blog.getBlogDescription();
		
		BlogServiceImpl.insertblog(blog);
		Integer maxid = this.BlogServiceImpl.searchmaxblogid();
		System.out.println(maxid);
		session.setAttribute("blogid", maxid);
		session.setAttribute("description", description);
		model.addAttribute(blog);
		return "upblogimage.jsp";
	}

	@RequestMapping(value="/searchblogbyname")
	public String insertblog(String blogname,Model model){
		String blogName = blogname;
		Blog blog = this.BlogServiceImpl.searchblogbyname(blogName);
		int blogId = blog.getBlogId();
		model.addAttribute("blogId", blogId);  
//      return "home";//此方式跳转，页面刷新会重复提交表单  
      return "redirect:/selectblogbyid";
	}
}