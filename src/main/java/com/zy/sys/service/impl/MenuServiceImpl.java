package com.zy.sys.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zy.sys.domain.Menu;
import com.zy.sys.mapper.MenuMapper;
import com.zy.sys.service.MenuService;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.MenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 21:19
 * @PS:
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> queryAllMenuForList(MenuVo menuVo) {
        return menuMapper.queryAllMenu(menuVo);
    }


    @Override
    public List<Menu> queryMenuByUserIdForList(MenuVo menuVo, Integer userId) {

        return menuMapper.queryMenuByUid(menuVo.getAvailable(),userId);
    }

    @Override
    public DataGridView queryAllMenu(MenuVo menuVo) {
        Page<Object> page = PageHelper.startPage(menuVo.getPage(), menuVo.getLimit());
        List<Menu> data = menuMapper.queryAllMenu(menuVo);

        return new DataGridView(page.getTotal(), data);
    }

    @Override
    public void addMenu(MenuVo menuVo) {
        menuMapper.insertSelective(menuVo);
    }

    @Override
    public void updateMenu(MenuVo menuVo) {
        menuMapper.updateByPrimaryKeySelective(menuVo);
    }

    @Override
    public Integer queryMenuByPid(Integer pid) {
       return menuMapper.queryMenuByPid(pid);

    }

    @Override
    public void deleteMenu(MenuVo menuVo) {
        //删除菜单表的数据
        menuMapper.deleteByPrimaryKey(menuVo.getId());

        //根据菜单id删除sys_role_menu里面的数据
        menuMapper.deleteRoleMenuByMid(menuVo.getId());
    }
}
