package com.zy.bus.service;

import com.zy.bus.domain.Customer;
import com.zy.bus.vo.CustomerVo;
import com.zy.sys.utils.DataGridView;

import java.util.List;

/**
 * @author 17616
 */
public interface CustomerService {
    /**
     * 查询所有客户
     *
     * @param customerVo
     * @return
     */
    DataGridView queryAllCustomer(CustomerVo customerVo);

    /**
     * 添加客户
     *
     * @param customerVo
     */
    void addCustomer(CustomerVo customerVo);

    /**
     * 修改客户
     *
     * @param customerVo
     */
    void updateCustomer(CustomerVo customerVo);

    /**
     * 根据id删除客户
     *
     * @param identity
     */
    void deleteCustomer(String identity);

    /**
     * 批量删除客户
     *
     * @param identitys
     */
    void deleteBatchCustomer(String[] identitys);


    Customer queryCustomerByIdentity(String identity);


    List<Customer> queryAllCustomerForList(CustomerVo customerVo);
}