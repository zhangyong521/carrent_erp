package com.zy.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 14:59
 * @PS: 跳转层
 */
@Controller
@RequestMapping("sys")
public class SystemController {

    /**
     * 跳转到菜单管理
     *
     * @return
     */
    @RequestMapping("toMenuManager")
    public String toMenuManager() {
        return "system/menu/menuManager";
    }

    /**
     * 跳转到菜单管理左边的菜单树页面
     *
     * @return
     */
    @RequestMapping("toMenuLeft")
    public String toMenuLeft() {
        return "system/menu/menuLeft";
    }

    /**
     * 跳转到菜单管理右边的菜单列表
     *
     * @return
     */
    @RequestMapping("toMenuRight")
    public String toMenuRight() {
        return "system/menu/menuRight";
    }

    /**
     * 跳转到角色管理
     *
     * @return
     */
    @RequestMapping("toRoleManager")
    public String toRoleManager() {
        return "system/role/roleManager";
    }

    /**
     * 跳转到用户管理
     *
     * @return
     */
    @RequestMapping("toUserManager")
    public String toUserManager() {
        return "system/user/userManager";
    }

    /**
     * 跳转到日志文件
     *
     * @return
     */
    @RequestMapping("toLoginfoManager")
    public String toLoginfoManager() {
        return "system/logInfo/logInfoManager";
    }


    /**
     * 跳转到公告
     *
     * @return
     */
    @RequestMapping("toNewsManager")
    public String toNewsManager() {
        return "system/news/newsManager";
    }

}
