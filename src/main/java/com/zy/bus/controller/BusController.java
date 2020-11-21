package com.zy.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-21 11:52
 * @PS:
 */
@Controller
@RequestMapping("bus")
public class BusController {

    /**
     * 跳转到客户管理页
     *
     * @return
     */
    @RequestMapping("toCustomerManager")
    public String toCustomerManager() {
        return "business/customer/customerManager";
    }

    /**
     * 跳转到车辆管理的页面
     *
     * @return
     */
    @RequestMapping("toCarManager")
    public String toCarManager() {
        return "business/car/carManager";
    }


    /**
     * 跳转到汽车出租
     *
     * @return
     */
    @RequestMapping("toRentCarManager")
    public String toRentCarManager() {
        return "business/rent/rentCarManager";
    }

    /**
     * 跳转到出租单管理的页面
     *
     * @return
     */
    @RequestMapping("toRentManager")
    public String toRentManager() {
        return "business/rent/rentManager";
    }

    /**
     * 跳转到汽车入库管理的页面
     *
     * @return
     */
    @RequestMapping("toCheckCarManager")
    public String toCheckCarManager() {
        return "business/check/checkCarManager";
    }

    /**
     * 跳转到检查单管理的页面
     *
     * @return
     */
    @RequestMapping("toCheckManager")
    public String toCheckManager() {
        return "business/check/checkManager";
    }


}
