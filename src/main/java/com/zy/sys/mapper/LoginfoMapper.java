package com.zy.sys.mapper;

import com.zy.sys.domain.Loginfo;

import java.util.List;

public interface LoginfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Loginfo record);

    int insertSelective(Loginfo record);

    Loginfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Loginfo record);

    int updateByPrimaryKey(Loginfo record);

    /**
     * 全查询日志文件
     * @param loginfo
     * @return
     */
    List<Loginfo> queryAllLoginfo(Loginfo loginfo);

}