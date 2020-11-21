package com.zy.sys.vo;

import com.zy.sys.domain.Role;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-19 21:16
 * @PS:
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class RoleVo extends Role {

    private Integer page;
    private Integer limit;

    private Integer[] ids;


}
