package com.zy.sys.utils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-20 8:35
 * @PS: 返回前端的格式
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DataGridView {
    private Integer code=0;
    private String msg="";
    private Long count;
    private Object data;

    public DataGridView(Object data) {
        this.data = data;
    }

    public DataGridView(Long count, Object data) {
        this.count = count;
        this.data = data;
    }

}
