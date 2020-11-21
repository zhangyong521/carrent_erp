package com.zy.sys.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import cn.hutool.captcha.LineCaptcha;
import com.zy.sys.constast.SysConstast;
import com.zy.sys.domain.User;
import com.zy.sys.service.LoginfoService;
import com.zy.sys.service.UserService;
import com.zy.sys.utils.ResultObj;
import com.zy.sys.utils.WebUtils;
import com.zy.sys.vo.LoginfoVo;
import com.zy.sys.vo.UserVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;


/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 14:57
 * @PS: 登录的控制层
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private LoginfoService loginfoService;

    /**
     * 跳转到登录页
     *
     * @return
     */
    @RequestMapping("toLogin")
    public String toLogin() {
        return "system/main/login";
    }

    /**
     * 登录
     *
     * @param userVo
     * @param model
     * @return
     */
    @RequestMapping("login")
    public String login(UserVo userVo, String code, HttpSession session, Model model) {
        //获取生成验证码
        Object codeSession = session.getAttribute("code");
        if (code != null && code.equals(codeSession)) {
            User user = userService.login(userVo);
            if (null != user) {
                //放到session
                WebUtils.getHttpSession().setAttribute("user", user);
                //记录登陆日志 向sys_login_log里面插入数据
                LoginfoVo loginfoVo = new LoginfoVo();
                loginfoVo.setLogintime(new Date());
                loginfoVo.setLoginname(user.getRealname() + "-" + user.getLoginname());
                loginfoVo.setLoginip(WebUtils.getHttpServletRequest().getRemoteAddr());
                loginfoService.addLoginfo(loginfoVo);
                return "system/main/index";
            } else {
                model.addAttribute("error", SysConstast.USER_LOGIN_ERROR_MSG);
                return "system/main/login";
            }
        } else {
            model.addAttribute("error", SysConstast.USER_LOGIN_CODE_ERROR_MSG);
            return "system/main/login";
        }
    }

    /**
     * 生成验证码
     *
     * @param resp
     * @param session
     * @throws IOException
     */
    @RequestMapping("getCode")
    public void getCode(HttpServletResponse resp, HttpSession session) throws IOException {

        CircleCaptcha captcha = CaptchaUtil.createCircleCaptcha(116, 36, 4, 5);
        //得到code
        String code = captcha.getCode();
        System.out.println(code);
        //放到session
        session.setAttribute("code", code);
        ServletOutputStream outputStream = resp.getOutputStream();
        captcha.write(outputStream);
        outputStream.close();

    }

}
