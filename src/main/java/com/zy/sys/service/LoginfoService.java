package com.zy.sys.service;

import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.LoginfoVo;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-20 22:30
 * @PS: 接口
 */

public interface LoginfoService {
    /**
     * 查询所有日志
     *
     * @param loginfoVo
     * @return
     */
    DataGridView queryAllLoginfo(LoginfoVo loginfoVo);

    /**
     * 添加日志
     *
     * @param loginfoVo
     */
    void addLoginfo(LoginfoVo loginfoVo);

    /**
     * 根据id删除日志
     *
     * @param loginfoid
     */
    void deleteLoginfo(Integer loginfoid);

    /**
     * 批量删除日志
     *
     * @param ids
     */
    void deleteBatchLoginfo(Integer[] ids);
}
