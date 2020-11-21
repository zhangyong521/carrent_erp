package com.zy.sys.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 17616
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Role {
    private Integer roleid;

    private String rolename;

    private String roledesc;

    private Integer available;

}