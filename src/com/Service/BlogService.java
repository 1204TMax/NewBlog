package com.Service;

import java.util.List;

import org.springframework.ui.Model;

import com.po.Blog;
import com.po.User;

public interface BlogService {

	List<Blog> selectallBlog();

	Object selectblogbyid(int blogId);
	
	User getusername(int blogId);

	void updatablogbyid(Blog record);

	void insertblogbyid(Blog record);

	void delblogbyid(int blogId);
	void insertblog(Blog blog);
	Blog searchblogbyname(String blogName);
	Integer searchmaxblogid();
}