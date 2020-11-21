package com.zy.sys.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author 17616
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Loginfo {
    private Integer id;

    private String loginname;

    private String loginip;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date logintime;

}