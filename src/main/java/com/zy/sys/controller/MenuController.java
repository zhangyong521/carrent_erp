package com.zy.sys.controller;

import com.zy.sys.constast.SysConstast;
import com.zy.sys.domain.Menu;
import com.zy.sys.domain.User;
import com.zy.sys.service.MenuService;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.utils.ResultObj;
import com.zy.sys.utils.TreeNode;
import com.zy.sys.utils.TreeNodeBuilder;
import com.zy.sys.utils.WebUtils;
import com.zy.sys.vo.MenuVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;


/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 14:57
 * @PS: 菜单的控制层
 */
@RestController
@RequestMapping("menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    /**
     * 登录
     *
     * @param menuVo
     * @return
     */
    @RequestMapping("loadIndexLeftMenuJson")
    public List<TreeNode> loadIndexLeftMenuJson(MenuVo menuVo) {
        //得到当前登陆的用户对象
        User user = (User) WebUtils.getHttpSession().getAttribute("user");
        List<Menu> list = null;
        //只查询可用的
        menuVo.setAvailable(SysConstast.AVAILABLE_TRUE);
        //判断用户是否为超级用户
        if (user.getType().equals(SysConstast.USER_TYPE_SUPER)) {
            list = this.menuService.queryAllMenuForList(menuVo);
        } else {
            list = this.menuService.queryMenuByUserIdForList(menuVo, user.getUserid());
        }
        List<TreeNode> nodes = new ArrayList<>();
        //把list里面的数据放到nodes
        for (Menu menu : list) {
            Integer id = menu.getId();
            Integer pid = menu.getPid();
            String title = menu.getTitle();
            String icon = menu.getIcon();
            String href = menu.getHref();
            Boolean spread = menu.getSpread().equals(SysConstast.SPREAD_TRUE) ? true : false;
            String target = menu.getTarget();
            nodes.add(new TreeNode(id, pid, title, icon, href, spread, target));
        }
        return TreeNodeBuilder.builder(nodes, 1);
    }

    /**
     * 加载菜单管理左边的菜单树
     *
     * @param menuVo
     * @return
     */
    @RequestMapping("loadMenuManagerLeftTreeJson")
    public DataGridView loadMenuManagerLeftTreeJson(MenuVo menuVo) {
        //只查询可用的
        menuVo.setAvailable(SysConstast.AVAILABLE_TRUE);
        List<Menu> list = menuService.queryAllMenuForList(menuVo);
        List<TreeNode> nodes = new ArrayList<>();
        //把list里面的数据放到nodes
        for (Menu menu : list) {
            Integer id = menu.getId();
            Integer pid = menu.getPid();
            String title = menu.getTitle();
            String icon = menu.getIcon();
            String href = menu.getHref();
            Boolean spread = menu.getSpread().equals(SysConstast.SPREAD_TRUE) ? true : false;
            String target = menu.getTarget();
            nodes.add(new TreeNode(id, pid, title, icon, href, spread, target));
        }
        return new DataGridView(nodes);
    }

    /**
     * 查询菜单+分页
     *
     * @param menuVo
     * @return
     */
    @RequestMapping("loadAllMenu")
    public DataGridView loadAllMenu(MenuVo menuVo) {
        return this.menuService.queryAllMenu(menuVo);
    }

    /**
     * 添加
     * @param menuVo
     * @return
     */
    @RequestMapping("addMenu")
    public ResultObj addMenu(MenuVo menuVo) {
        try {
            menuService.addMenu(menuVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改菜单
     * @param menuVo
     * @return
     */
    @RequestMapping("updateMenu")
    public ResultObj updateMenu(MenuVo menuVo) {
        try {
            menuService.updateMenu(menuVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 根据id判断当前菜单有没有子节点
     * 有返回code>=0
     * 没有 返回code<0
     * @param menuVo
     * @return
     */
    @RequestMapping("checkMenuHasChildren")
    public ResultObj checkMenuHasChildren(MenuVo menuVo){
        //根据pid查询菜单数量
        Integer count=this.menuService.queryMenuByPid(menuVo.getId());
        if(count>0) {
            return ResultObj.STATUS_TRUE;
        }else {
            return ResultObj.STATUS_FALSE;
        }
    }

    /**
     * 删除菜单
     * @param menuVo
     * @return
     */
    @RequestMapping("deleteMenu")
    public ResultObj deleteMenu(MenuVo menuVo) {
        try {
            this.menuService.deleteMenu(menuVo);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

}
