package com.dao;

import com.po.Blog;
import com.po.Index;
import com.po.IndexExample;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IndexMapper {
    long countByExample(IndexExample example);

    int deleteByExample(IndexExample example);

    int deleteByPrimaryKey(Integer indexId);

    int insert(Index record);

    int insertSelective(Index record);

    List<Index> selectByExample(IndexExample example);

    Index selectByPrimaryKey(Integer indexId);

    int updateByExampleSelective(@Param("record") Index record, @Param("example") IndexExample example);

    int updateByExample(@Param("record") Index record, @Param("example") IndexExample example);

    int updateByPrimaryKeySelective(Index record);

    ArrayList<Index> selectindex(Integer page);
    void insertIndex(Index index);
}