package com.Service;

import java.util.List;

import com.po.Blog;
import com.po.BlogPhotos;

public interface BlogPhotosService {

	List<BlogPhotos> selectallBlogphotos();

	BlogPhotos selectblogphotosbyid(int photoId);

	void updatalogphotosbyid(BlogPhotos record);

	void insertlogphotosbyid(BlogPhotos record);

	void insertphoto(BlogPhotos photo);
	Integer searchmaxphotoid();
}