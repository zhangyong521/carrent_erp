package com.zy.sys.utils;

import com.zy.sys.constast.SysConstast;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-20 9:25
 * @PS: 无数据返回
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResultObj {

    private Integer code;
    private String msg;

    public ResultObj(Integer code) {
        this.code = code;
    }


    /**
     * 添加成功
     */
    public static final ResultObj ADD_SUCCESS = new ResultObj(SysConstast.CODE_SUCCESS,SysConstast.ADD_SUCCESS);
    /**
     * 添加失败
     */
    public static final ResultObj ADD_ERROR = new ResultObj(SysConstast.CODE_ERROR,SysConstast.ADD_ERROR);
    /**
     * 更新成功
     */
    public static final ResultObj UPDATE_SUCCESS = new ResultObj(SysConstast.CODE_SUCCESS,SysConstast.UPDATE_SUCCESS);
    /**
     * 更新失败
     */
    public static final ResultObj UPDATE_ERROR = new ResultObj(SysConstast.CODE_ERROR,SysConstast.UPDATE_ERROR);
    /**
     * 删除成功
     */
    public static final ResultObj DELETE_SUCCESS = new ResultObj(SysConstast.CODE_SUCCESS,SysConstast.DELETE_SUCCESS);
    /**
     * 删除失败
     */
    public static final ResultObj DELETE_ERROR = new ResultObj(SysConstast.CODE_ERROR,SysConstast.DELETE_ERROR);
    /**
     * 重置成功
     */
    public static final ResultObj RESET_SUCCESS = new ResultObj(SysConstast.CODE_SUCCESS,SysConstast.RESET_SUCCESS);
    /**
     * 重置失败
     */
    public static final ResultObj RESET_ERROR = new ResultObj(SysConstast.CODE_ERROR,SysConstast.RESET_ERROR);
    /**
     * 分配成功
     */
    public static final ResultObj DISPATCH_SUCCESS = new ResultObj(SysConstast.CODE_SUCCESS,SysConstast.DISPATCH_SUCCESS);
    /**
     * 分配失败
     */
    public static final ResultObj DISPATCH_ERROR = new ResultObj(SysConstast.CODE_ERROR,SysConstast.DISPATCH_ERROR);


    /**
     * 状态码0 成功
     */
    public static final ResultObj STATUS_TRUE = new ResultObj(SysConstast.CODE_SUCCESS);

    /**
     * 状态码-1 失败
     */
    public static final ResultObj STATUS_FALSE = new ResultObj(SysConstast.CODE_ERROR);



}
