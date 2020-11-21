package com.zy.bus.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zy.bus.domain.Car;
import com.zy.bus.mapper.CarMapper;
import com.zy.bus.service.CarService;
import com.zy.bus.vo.CarVo;
import com.zy.sys.constast.SysConstast;
import com.zy.sys.utils.AppFileUtils;
import com.zy.sys.utils.DataGridView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: 张勇
 * @Blog: https://blog.csdn.net/zy13765287861
 * @Version: 1.0
 * @Date: 2020-11-21 17:17
 * @PS:
 */
@Service
public class CarServiceImpl implements CarService {

    @Autowired
    private CarMapper carMapper;


    @Override
    public DataGridView queryAllCar(CarVo carVo) {
        Page<Object> page = PageHelper.startPage(carVo.getPage(), carVo.getLimit());
        List<Car> data = carMapper.queryAllCar(carVo);
        return new DataGridView(page.getTotal(), data);
    }

    /**
     * 添加一个车辆
     * @param carVo
     */
    @Override
    public void addCar(CarVo carVo) {
        this.carMapper.insertSelective(carVo);
    }

    /**
     * 更新一个车辆
     * @param carVo
     */
    @Override
    public void updateCar(CarVo carVo) {
        this.carMapper.updateByPrimaryKeySelective(carVo);
    }

    /**
     * 删除一个车辆
     * @param carnumber
     */
    @Override
    public void deleteCar(String carnumber) {
        //先删除图片
        Car car = this.carMapper.selectByPrimaryKey(carnumber);
        //如果不是默认图片就删除
        if (!car.getCarimg().equals(SysConstast.DEFAULT_CAR_IMG)){
            AppFileUtils.deleteFileUsePath(car.getCarimg());
        }
        //删除数据库的数据
        this.carMapper.deleteByPrimaryKey(carnumber);
    }

    /**
     * 批量删除车辆
     * @param carnumbers
     */
    @Override
    public void deleteBatchCar(String[] carnumbers) {
        for (String carnumber : carnumbers) {
            this.deleteCar(carnumber);
        }

    }

    @Override
    public Car queryCarByCarNumber(String carnumber) {
        return this.carMapper.selectByPrimaryKey(carnumber);
    }

}
