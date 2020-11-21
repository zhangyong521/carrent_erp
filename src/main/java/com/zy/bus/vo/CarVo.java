package com.zy.bus.vo;

import com.zy.bus.domain.Car;
import com.zy.bus.domain.Customer;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-20 22:21
 * @PS:
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class CarVo extends Car {

    private Integer page = 1;
    private Integer limit = 10;

    private String[] ids;

}
