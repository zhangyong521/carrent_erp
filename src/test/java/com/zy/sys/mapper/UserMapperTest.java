package com.zy.sys.mapper;

import com.zy.sys.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 18:32
 * @PS:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:application-dao.xml"})
public class UserMapperTest {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void login() {
        User user = new User();
        user.setLoginname("admin");
        user.setPwd("e10adc3949ba59abbe56e057f20f883e");
        User login = userMapper.login(user);
        System.out.println(login);
    }
}
