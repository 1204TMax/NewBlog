package com.Service;


import java.util.ArrayList;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.BlogMapper;
import com.po.Blog;
import com.po.BlogExample;
import com.po.UserExample;
import com.dao.UserMapper;
import com.po.User;
import com.po.UserRank;
import com.po.UserRankExample;
import com.dao.UserRankMapper;

@Service("BlogServiceImpl")
public class BlogServiceImpl implements BlogService  {
	
	@Autowired
	private BlogMapper BlogMapper;
	
	@Autowired
	private UserRankMapper UserRankMapper;
	/* (non-Javadoc)
	 * @see com.Service.BlogService#selectallBlog()
	 */
	@Override
	public List<Blog> selectallBlog() {
		BlogExample blogexample = new BlogExample();
		BlogExample.Criteria blogCriteria=blogexample.createCriteria();
		blogCriteria.andBlogIdIsNotNull();
		return this.BlogMapper.selectByExample(blogexample);
	}
	
	
	/* (non-Javadoc)
	 * @see com.Service.BlogService#selectblogbyid(int)
	 */
	@Override
	public Blog selectblogbyid(int blogId){
		Blog blog = this.BlogMapper.selectByPrimaryKey(blogId);
		//UserExample userexample = new UserExample();
		//userexample.createCriteria().andUserIdEqualTo(blog.getUserId());
		//UserExample.Criteria userCriteria=userexample.createCriteria();
		//userCriteria.andUserIdEqualTo(blog.getUserId());
		//int userid = blog.getUserId();
		//User user = this.UserMapper.selectByPrimaryKey(userid);
		//List<User> users = this.UserMapper.selectByExample(userexample);
		//User user = users.get(0);
		//Object[] arr = new String[2];
	     //arr[0] = blog;
	     //arr[1] = user;
		
	     return blog;
	};
	@Override
	public User getusername(int blogId){
		Blog blog = this.BlogMapper.selectByPrimaryKey(blogId);
		int userId = blog.getUserId();
		//User user = this.UserMapper.selectByuserid(userId);
		return null;
		
	     //return user;
	};

                                                                                                                                                                 
	/* (non-Javadoc)
	 * @see com.Service.BlogService#updatablogbyid(com.po.Blog)
	 */
	@Override
	public void updatablogbyid(Blog record) {
		this.BlogMapper.updateByPrimaryKey(record);
	}
	
	
	/* (non-Javadoc)
	 * @see com.Service.BlogService#insertuserbyid(com.po.Blog)
	 */
	@Override
	public void insertblogbyid(Blog record) {
		this.BlogMapper.insert(record);
	}

	/* (non-Javadoc)
	 * @see com.Service.BlogService#deluser(int)
	 */
	@Override
	public void delblogbyid(int blogId) {
		this.BlogMapper.deleteByPrimaryKey(blogId);
	}


	@Override
	public void insertblog(Blog blog) {
		this.BlogMapper.insertblog(blog);
		//this.UserRankMapper.insert(record);
	}


	@Override
	public Blog searchblogbyname(String blogName) {
		BlogExample blogexample = new BlogExample();
		BlogExample.Criteria blogCriteria=blogexample.createCriteria();
		blogCriteria.andBlogTitleEqualTo(blogName);
		return this.BlogMapper.selectByExample(blogexample).get(0);
	}


	@Override
	public Integer searchmaxblogid() {
		return this.BlogMapper.searchmaxblogid();
	}

}
