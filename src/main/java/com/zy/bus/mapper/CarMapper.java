package com.zy.bus.mapper;

import com.zy.bus.domain.Car;

import java.util.List;

public interface CarMapper {
    int deleteByPrimaryKey(String carnumber);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(String carnumber);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    /**
     * 全查询
     * @param car
     * @return
     */
    List<Car> queryAllCar(Car car);
}