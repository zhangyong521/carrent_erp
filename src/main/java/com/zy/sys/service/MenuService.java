package com.zy.sys.service;

import com.zy.sys.domain.Menu;
import com.zy.sys.domain.User;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.MenuVo;
import com.zy.sys.vo.UserVo;

import java.util.List;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 14:19
 * @PS: 菜单的接口
 */
public interface MenuService {

    /**
     * 查询所有菜单返回
     *
     * @param menuVo
     * @return
     */
    List<Menu> queryAllMenuForList(MenuVo menuVo);

    /**
     * 根据用户id查询用户的可用菜单
     *
     * @param menuVo
     * @param userId
     * @return
     */
    List<Menu> queryMenuByUserIdForList(MenuVo menuVo,Integer userId);

    /**
     * 查询所有的菜单
     * @param menuVo
     * @return
     */
    DataGridView queryAllMenu(MenuVo menuVo);

    /**
     * 添加菜单
     * @param menuVo
     */
    void addMenu(MenuVo menuVo);

    /**
     * 修改菜单
     * @param menuVo
     */
    void updateMenu(MenuVo menuVo);

    /**
     * 根据id查询是否具有子节点
     * @param pid
     * @return
     */
    Integer queryMenuByPid(Integer pid);

    /**
     * 删除菜单
     * @param menuVo
     */
    void deleteMenu(MenuVo menuVo);
}
