package com.zy.sys.vo;

import com.zy.sys.domain.Menu;
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
public class MenuVo extends Menu {

    private Integer page = 1;
    private Integer limit = 10;


}
