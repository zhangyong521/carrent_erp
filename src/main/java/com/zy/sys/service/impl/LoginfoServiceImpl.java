package com.zy.sys.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zy.sys.domain.Loginfo;
import com.zy.sys.mapper.LoginfoMapper;
import com.zy.sys.service.LoginfoService;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.LoginfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-20 22:32
 * @PS:
 */
@Service
public class LoginfoServiceImpl implements LoginfoService {

    @Autowired
    private LoginfoMapper loginfoMapper;

    /**
     * 查询日志
     *
     * @param loginfoVo
     * @return
     */
    @Override
    public DataGridView queryAllLoginfo(LoginfoVo loginfoVo) {
        Page<Object> page = PageHelper.startPage(loginfoVo.getPage(), loginfoVo.getLimit());
        List<Loginfo> data = loginfoMapper.queryAllLoginfo(loginfoVo);
        return new DataGridView(page.getTotal(), data);
    }

    /**
     * 添加日志
     *
     * @param loginfoVo
     */
    @Override
    public void addLoginfo(LoginfoVo loginfoVo) {
        loginfoMapper.insertSelective(loginfoVo);
    }

    /**
     * 删除单个日志
     *
     * @param loginfoid
     */
    @Override
    public void deleteLoginfo(Integer loginfoid) {
        loginfoMapper.deleteByPrimaryKey(loginfoid);
    }

    /**
     * 批量删除日志
     *
     * @param ids
     */
    @Override
    public void deleteBatchLoginfo(Integer[] ids) {
        for (Integer id : ids) {
            this.deleteLoginfo(id);
        }
    }
}
