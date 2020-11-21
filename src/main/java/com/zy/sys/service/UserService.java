package com.zy.sys.service;

import com.zy.sys.domain.User;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.UserVo;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 14:19
 * @PS: 用户的接口
 */
public interface UserService {

    /**
     * 登录
     *
     * @param userVo
     * @return
     */
    User login(UserVo userVo);

    /**
     * 查询所有用户
     *
     * @param userVo
     * @return
     */
    DataGridView queryAllUser(UserVo userVo);

    /**
     * 添加用户
     *
     * @param userVo
     */
    void addUser(UserVo userVo);

    /**
     * 修改用户
     *
     * @param userVo
     */
    void updateUser(UserVo userVo);

    /**
     * 根据id删除用户
     *
     * @param userid
     */
    void deleteUser(Integer userid);

    /**
     * 批量删除用户
     *
     * @param ids
     */
    void deleteBatchUser(Integer[] ids);

    /**
     * 重置密码
     *
     * @param userid
     */
    void resetUserPwd(Integer userid);

    /**
     * 加载用户管理的分配角色的数据
     * @param userid
     * @return
     */
    DataGridView queryUserRole(Integer userid);

    /**
     * 保存用户和角色的关系
     * @param userVo
     */
    void saveUserRole(UserVo userVo);
}
