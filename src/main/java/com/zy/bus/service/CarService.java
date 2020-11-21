package com.zy.bus.service;

import com.zy.bus.domain.Car;
import com.zy.bus.vo.CarVo;
import com.zy.sys.utils.DataGridView;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-21 17:16
 * @PS:
 */
public interface CarService {

    /**
     * 全查询
     * @param carVo
     * @return
     */
    DataGridView queryAllCar(CarVo carVo);

    /**
     * 添加车辆信息
     * @param carVo
     */
    void addCar(CarVo carVo);

    /**
     *
     * @param carnumber
     * @return
     */
    Car queryCarByCarNumber(String carnumber);

    /**
     * 修改车辆信息
     * @param carVo
     */
    void updateCar(CarVo carVo);

    /**
     * 删除
     * @param carnumber
     */
    void deleteCar(String carnumber);

    /**
     * 批量删除
     * @param carnumbers
     */
    void deleteBatchCar(String[] carnumbers);
}
