package com.dao;

import com.po.BlogPhotos;
import com.po.BlogPhotosExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogPhotosMapper {
    long countByExample(BlogPhotosExample example);

    int deleteByExample(BlogPhotosExample example);

    int deleteByPrimaryKey(Integer photoId);

    int insert(BlogPhotos record);

    int insertSelective(BlogPhotos record);

    List<BlogPhotos> selectByExample(BlogPhotosExample example);

    BlogPhotos selectByPrimaryKey(Integer photoId);

    int updateByExampleSelective(@Param("record") BlogPhotos record, @Param("example") BlogPhotosExample example);

    int updateByExample(@Param("record") BlogPhotos record, @Param("example") BlogPhotosExample example);

    int updateByPrimaryKeySelective(BlogPhotos record);

    int updateByPrimaryKey(BlogPhotos record);
    void insertphoto(BlogPhotos photo);
    Integer searchmaxphotoid();
}