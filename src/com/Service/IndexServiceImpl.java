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
import com.po.BlogPhotos;
import com.po.UserExample;
import com.dao.UserMapper;
import com.po.User;
import com.dao.BlogPhotosMapper;
import com.dao.IndexMapper;
import com.po.Index;
import com.po.IndexExample;
@Service("IndexServiceImpl")
public class IndexServiceImpl  {
	
	@Autowired
	private IndexMapper IndexMapper;
	
	public List<Index> selectindex(int page) {
		IndexExample indexexample = new IndexExample();
		IndexExample.Criteria indexCriteria=indexexample.createCriteria();
		//indexCriteria.andBlogIdBetween(page*10-10, page*10);
		indexexample.setOrderByClause("blog_id DESC");
		return this.IndexMapper.selectByExample(indexexample);
		
		//ArrayList<Index> indexs = IndexMapper.selectindex(page);
		//return indexs;
	}
	public void insertIndex(Index index) {
		this.IndexMapper.insertIndex(index);
		
	}
}
