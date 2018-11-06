package com.Service;


import java.util.ArrayList;
import java.util.List;

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
import com.po.BlogPhotos;
import com.po.BlogPhotosExample;
import com.dao.BlogPhotosMapper;
@Service("BlogPhotosServiceImpl")
public class BlogPhotosServiceImpl implements BlogPhotosService  {
	@Autowired
	private BlogPhotosMapper BlogPhotosMapper;
	@Override
	public List<BlogPhotos> selectallBlogphotos() {
		BlogPhotosExample photoexample = new BlogPhotosExample();
		BlogPhotosExample.Criteria photoCriteria=photoexample.createCriteria();
		photoCriteria.andPhotoIdIsNotNull();
		return this.BlogPhotosMapper.selectByExample(photoexample);
	}
	@Override
	public BlogPhotos selectblogphotosbyid(int photoId) {
		BlogPhotos photo = this.BlogPhotosMapper.selectByPrimaryKey(photoId);
		return photo;
	}
	@Override
	public void updatalogphotosbyid(BlogPhotos record) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void insertlogphotosbyid(BlogPhotos record) {
		this.BlogPhotosMapper.insert(record);
		
	}
	@Override
	public void insertphoto(BlogPhotos photo) {
		this.BlogPhotosMapper.insertphoto(photo);
	}
	@Override
	public Integer searchmaxphotoid() {
		return this.BlogPhotosMapper.searchmaxphotoid();
	}

	
}
