package com.zy.sys.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author 17616
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Menu {
    private Integer id;

    private Integer pid;

    private String title;

    private String href;

    private Integer spread;

    private String target;

    private String icon;

    private Integer available;

}