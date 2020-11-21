package com.zy.sys.controller;

import com.zy.sys.service.LoginfoService;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.utils.ResultObj;
import com.zy.sys.vo.LoginfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-20 22:35
 * @PS:
 */
@RestController
@RequestMapping("logInfo")
public class LoginfoController {

    @Autowired
    private LoginfoService logInfoService;

    /**
     * 加载日志列表返回DataGridView
     *
     * @param logInfoVo
     * @return
     */
    @RequestMapping("loadAllLogInfo")
    public DataGridView loadAllLogInfo(LoginfoVo logInfoVo) {
        return logInfoService.queryAllLoginfo(logInfoVo);
    }

    /**
     * 删除一条日志
     *
     * @param logInfoVo
     * @return
     */
    @RequestMapping("deleteLogInfo")
    public ResultObj deleteLogInfo(LoginfoVo logInfoVo) {
        try {
            logInfoService.deleteLoginfo(logInfoVo.getId());
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除日志
     *
     * @param logInfoVo
     * @return
     */
    @RequestMapping("deleteBatchLogInfo")
    public ResultObj deleteBatchLogInfo(LoginfoVo logInfoVo) {
        try {
            logInfoService.deleteBatchLoginfo(logInfoVo.getIds());
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

}
