package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.jws.soap.SOAPBinding.Use;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Service.BlogServiceImpl;
import com.Service.UserServiceImpl;
import com.Service.BlogPhotosServiceImpl;
import com.Service.BlogService;
import com.po.Blog;
import com.po.User;
import com.getip.getIP;
import com.po.BlogPhotos;
import com.po.BlogPhotosExample;
import com.po.BlogPhotos;
import com.dao.BlogPhotosMapper;
@Controller
public class BlogPhotosController {
	@Resource(name="BlogServiceImpl")
	private BlogServiceImpl BlogServiceImpl;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
	@Resource(name="BlogPhotosServiceImpl")
	private BlogPhotosServiceImpl BlogPhotosServiceImpl;
	//private static final Log logger = LogFactory.getLog(UserController.class);

	@RequestMapping(value="/selectallphoto")
	public String selectallBlog(Model model){
		List<Blog> blogs = BlogServiceImpl.selectallBlog();
		model.addAttribute("Blogs", blogs);
		return "index.jsp";
	}

	@RequestMapping(value="/selectphotobyid")
	public String selectphotobyid(int photoId,Model model){
		BlogPhotos photo = BlogPhotosServiceImpl.selectblogphotosbyid(photoId);
		String src = photo.getPhotoSrc();
		model.addAttribute(src);
		return "blogcontent.jsp";
	}

	@RequestMapping(value="/updatablogphotobyid")
	public String updatablogbyid(BlogPhotos BlogPhotos,Model model){
		return "qwe";
	}

	@RequestMapping(value="/insertphotobyid")
	public String insertblogbyid(BlogPhotos record){
		this.BlogPhotosServiceImpl.insertlogphotosbyid(record);
		return "qwe";
	}

	@RequestMapping(value="/delblogphotobyid")
	public String delblogbyid(int blogphotosId,Model model){
		return "qwe";
	}

}
