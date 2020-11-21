package com.zy.sys.vo;

import com.zy.sys.domain.User;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 14:19
 * @PS: 用户的vo
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class UserVo extends User {

    private Integer page;
    private Integer limit;

    private Integer[] ids;

}
