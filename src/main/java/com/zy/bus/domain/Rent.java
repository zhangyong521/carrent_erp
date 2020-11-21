package com.zy.bus.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author 17616
 */
@NoArgsConstructor
@Data
@AllArgsConstructor
public class Rent {

    private String rentid;

    private Double price;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") //前台获取的时间进行格式化插入到数据库中
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GTM+8") //后台数据库查询出来的时间转换到前台进行显示
    private Date begindate;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH-mm-ss",timezone = "GTM+8")
    private Date returndate;

    private Integer rentflag;

    private String identity;

    private String carnumber;

    private String opername;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GTM+8") //后台数据库查询出来的时间转换到前台进行显示
    private Date createtime;

}