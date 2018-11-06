package com.controller;
import java.util.ArrayList;
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
import com.Service.IndexServiceImpl;
import com.po.Blog;
import com.po.Index;
import com.po.User;
import com.getip.getIP;
import com.dao.IndexMapper;
import com.po.BlogPhotos;
@Controller
public class IndexController {
	@Resource(name="BlogServiceImpl")
	private BlogServiceImpl BlogServiceImpl;
	@Resource(name="UserServiceImpl")
	private UserServiceImpl UserServiceImpl;
	@Resource(name="BlogPhotosServiceImpl")
	private BlogPhotosServiceImpl BlogPhotosServiceImpl;
	@Resource(name="IndexServiceImpl")
	private IndexServiceImpl IndexServiceImpl;
	
	@RequestMapping(value="/selectindex")
	public String selectindex(int page,Model model){
		List<Index> indexs = IndexServiceImpl.selectindex(page);
		//图片描述
		ArrayList<String> descriptions = new ArrayList<String>();
		
		String description1 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(0).getPhotoId()).getPhotoDescription();
		String description2 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(1).getPhotoId()).getPhotoDescription();
		String description3 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(2).getPhotoId()).getPhotoDescription();
		String description4 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(3).getPhotoId()).getPhotoDescription();
		String description5 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(4).getPhotoId()).getPhotoDescription();
		String description6 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(5).getPhotoId()).getPhotoDescription();
		String description7 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(6).getPhotoId()).getPhotoDescription();
		String description8 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(7).getPhotoId()).getPhotoDescription();
		String description9 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(8).getPhotoId()).getPhotoDescription();
		String description10 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(9).getPhotoId()).getPhotoDescription();
		
		descriptions.add(description1);
		descriptions.add(description2);
		descriptions.add(description3);
		descriptions.add(description4);
		descriptions.add(description5);
		descriptions.add(description6);
		descriptions.add(description7);
		descriptions.add(description8);
		descriptions.add(description9);
		descriptions.add(description10);
		
		//图片路径(http://localhost:8080/blogimages/)
		List<String> srcs = new ArrayList<String>();
		
		String src1 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(0).getPhotoId()).getPhotoSrc();
		String src2 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(1).getPhotoId()).getPhotoSrc();
		String src3 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(2).getPhotoId()).getPhotoSrc();
		String src4 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(3).getPhotoId()).getPhotoSrc();
		String src5 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(4).getPhotoId()).getPhotoSrc();
		String src6 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(5).getPhotoId()).getPhotoSrc();
		String src7 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(6).getPhotoId()).getPhotoSrc();
		String src8 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(7).getPhotoId()).getPhotoSrc();
		String src9 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(8).getPhotoId()).getPhotoSrc();
		String src10 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(9).getPhotoId()).getPhotoSrc();
		
		srcs.add(src1);
		srcs.add(src2);
		srcs.add(src3);
		srcs.add(src4);
		srcs.add(src5);
		srcs.add(src6);
		srcs.add(src7);
		srcs.add(src8);
		srcs.add(src9);
		srcs.add(src10);
		
		//图片名字（路径的最后一部分）
		List<String> photonames = new ArrayList<String>();
		
		String photoname1 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(0).getPhotoId()).getPhotoName();
		String photoname2 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(1).getPhotoId()).getPhotoName();
		String photoname3 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(2).getPhotoId()).getPhotoName();
		String photoname4 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(3).getPhotoId()).getPhotoName();
		String photoname5 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(4).getPhotoId()).getPhotoName();
		String photoname6 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(5).getPhotoId()).getPhotoName();
		String photoname7 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(6).getPhotoId()).getPhotoName();
		String photoname8 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(7).getPhotoId()).getPhotoName();
		String photoname9 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(8).getPhotoId()).getPhotoName();
		String photoname10 = BlogPhotosServiceImpl.selectblogphotosbyid(indexs.get(9).getPhotoId()).getPhotoName();
		
		photonames.add(photoname1);
		photonames.add(photoname2);
		photonames.add(photoname3);
		photonames.add(photoname4);
		photonames.add(photoname5);
		photonames.add(photoname6);
		photonames.add(photoname7);
		photonames.add(photoname8);
		photonames.add(photoname9);
		photonames.add(photoname10);
		
		//图片标题
		List<String> titles = new ArrayList<String>();
		
		String title1 = BlogServiceImpl.selectblogbyid(indexs.get(0).getBlogId()).getBlogTitle();
		String title2 = BlogServiceImpl.selectblogbyid(indexs.get(1).getBlogId()).getBlogTitle();
		String title3 = BlogServiceImpl.selectblogbyid(indexs.get(2).getBlogId()).getBlogTitle();
		String title4 = BlogServiceImpl.selectblogbyid(indexs.get(3).getBlogId()).getBlogTitle();
		String title5 = BlogServiceImpl.selectblogbyid(indexs.get(4).getBlogId()).getBlogTitle();
		String title6 = BlogServiceImpl.selectblogbyid(indexs.get(5).getBlogId()).getBlogTitle();
		String title7 = BlogServiceImpl.selectblogbyid(indexs.get(6).getBlogId()).getBlogTitle();
		String title8 = BlogServiceImpl.selectblogbyid(indexs.get(7).getBlogId()).getBlogTitle();
		String title9 = BlogServiceImpl.selectblogbyid(indexs.get(8).getBlogId()).getBlogTitle();
		String title10 = BlogServiceImpl.selectblogbyid(indexs.get(9).getBlogId()).getBlogTitle();
		
		titles.add(title1);
		titles.add(title2);
		titles.add(title3);
		titles.add(title4);
		titles.add(title5);
		titles.add(title6);
		titles.add(title7);
		titles.add(title8);
		titles.add(title9);
		titles.add(title10);
		
		//博客ID
		List<Integer> blogids = new ArrayList<Integer>();
		
		Integer blodid1 = indexs.get(0).getBlogId();
		Integer blodid2 = indexs.get(1).getBlogId();
		Integer blodid3 = indexs.get(2).getBlogId();
		Integer blodid4 = indexs.get(3).getBlogId();
		Integer blodid5 = indexs.get(4).getBlogId();
		Integer blodid6 = indexs.get(5).getBlogId();
		Integer blodid7 = indexs.get(6).getBlogId();
		Integer blodid8 = indexs.get(7).getBlogId();
		Integer blodid9 = indexs.get(8).getBlogId();
		Integer blodid10 = indexs.get(9).getBlogId();
		
		blogids.add(blodid1);
		blogids.add(blodid2);
		blogids.add(blodid3);
		blogids.add(blodid4);
		blogids.add(blodid5);
		blogids.add(blodid6);
		blogids.add(blodid7);
		blogids.add(blodid8);
		blogids.add(blodid9);
		blogids.add(blodid10);
		
		//作者
		List<String> usernames = new ArrayList<String>();
		
		String name1 = UserServiceImpl.selectuserByid(indexs.get(0).getUserId()).getUserName();
		String name2 = UserServiceImpl.selectuserByid(indexs.get(1).getUserId()).getUserName();
		String name3 = UserServiceImpl.selectuserByid(indexs.get(2).getUserId()).getUserName();
		String name4 = UserServiceImpl.selectuserByid(indexs.get(3).getUserId()).getUserName();
		String name5 = UserServiceImpl.selectuserByid(indexs.get(4).getUserId()).getUserName();
		String name6 = UserServiceImpl.selectuserByid(indexs.get(5).getUserId()).getUserName();
		String name7 = UserServiceImpl.selectuserByid(indexs.get(6).getUserId()).getUserName();
		String name8 = UserServiceImpl.selectuserByid(indexs.get(7).getUserId()).getUserName();
		String name9 = UserServiceImpl.selectuserByid(indexs.get(8).getUserId()).getUserName();
		String name10 = UserServiceImpl.selectuserByid(indexs.get(9).getUserId()).getUserName();
		
		usernames.add(name1);
		usernames.add(name2);
		usernames.add(name3);
		usernames.add(name4);
		usernames.add(name5);
		usernames.add(name6);
		usernames.add(name7);
		usernames.add(name8);
		usernames.add(name9);
		usernames.add(name10);
		
		model.addAttribute("descriptions", descriptions);
		model.addAttribute("srcs", srcs);
		model.addAttribute("titles", titles);
		model.addAttribute("usernames", usernames);
		model.addAttribute("blogids", blogids);
		model.addAttribute("photonames", photonames);
		return "index.jsp";
	}
}
