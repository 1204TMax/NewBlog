package com.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import com.Service.BlogPhotosServiceImpl;
import com.Service.BlogServiceImpl;
import com.Service.IndexServiceImpl;
import com.Service.UserServiceImpl;
import com.po.BlogPhotosExample;
import com.po.Index;
import com.po.User;
import com.po.BlogPhotos;
/**
 * 下载  测试
 * 
 *
 */
@Controller
public class Fileupload {
	@Resource(name="BlogPhotosServiceImpl")
	private BlogPhotosServiceImpl BlogPhotosServiceImpl;
	@Resource(name="BlogServiceImpl")
	private BlogServiceImpl BlogServiceImpl;
	@Resource(name="UserServiceImpl")
	private UserServiceImpl UserServiceImpl;
	@Resource(name="IndexServiceImpl")
	private IndexServiceImpl IndexServiceImpl;
	@RequestMapping("springUpload")
       public String  springUpload(HttpServletRequest request,Model model) throws IllegalStateException, IOException
       {
            //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
           CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
                   request.getSession().getServletContext());
           //检查form中是否有enctype="multipart/form-data"
           if(multipartResolver.isMultipart(request))
           {
               //将request变成多部分request
               MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
              //获取multiRequest 中所有的文件名
               Iterator iter=multiRequest.getFileNames();

               while(iter.hasNext())
               {
                   //一次遍历所有文件
                   MultipartFile file=multiRequest.getFile(iter.next().toString());
                   if(file!=null)
                   {
                	   HttpSession session = request.getSession();
                       String path="D:/Hblog/headimage"+file.getOriginalFilename();
                       
                       //上传
                       file.transferTo(new File(path));
                       //获得session
                       Integer blogid = (Integer) session.getAttribute("blogid");
                       String description = (String) session.getAttribute("description");
                       User user = (User) session.getAttribute("user");
                       //获得userid
                       String username = user.getUserName();
                       Integer userid = this.UserServiceImpl.searchuserbyname(username).getUserId();
                       
                       //插入photo
                       String blogDescription = description;
                       BlogPhotos photo = new BlogPhotos();
                       photo.setPhotoDescription(blogDescription);
                       photo.setBlogId(blogid);
                       String src = "http://localhost:8080/blogimages/";
                       photo.setPhotoSrc(src);
                       String photoname = file.getOriginalFilename();
                       photo.setPhotoName(photoname);
                       this.BlogPhotosServiceImpl.insertphoto(photo);
                       
                       //获得刚刚的photoid
                       Integer photoid =  this.BlogPhotosServiceImpl.searchmaxphotoid();
                       //给jsp传值
                       model.addAttribute("src", src);
                       model.addAttribute("username", username);
                       model.addAttribute("description", description);
                       model.addAttribute("photoname", photoname);
                       model.addAttribute("blogId", blogid);  
                       //给index表插入userid blogid photoid indexpage
                       Index index = new Index();
                       index.setBlogId(blogid);
                       index.setIndexPage(1);
                       index.setPhotoId(photoid);
                       index.setUserId(userid);
                       
                       this.IndexServiceImpl.insertIndex(index);
                       return "redirect:/selectblogbyid";
                   }

               }

           }
		return null;
        
       }
       

}