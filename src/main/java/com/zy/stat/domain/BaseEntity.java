package com.zy.stat.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 17616
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BaseEntity {

    private String name;
    private Double value;

}
