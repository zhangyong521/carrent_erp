package com.zy.bus.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zy.bus.domain.Customer;
import com.zy.bus.mapper.CustomerMapper;
import com.zy.bus.service.CustomerService;
import com.zy.bus.vo.CustomerVo;
import com.zy.sys.utils.DataGridView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 张勇
 */
@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper customerMapper;

	@Override
	public DataGridView queryAllCustomer(CustomerVo customerVo) {
		Page<Object> page= PageHelper.startPage(customerVo.getPage(), customerVo.getLimit());
		List<Customer> data = this.customerMapper.queryAllCustomer(customerVo);
		return new DataGridView(page.getTotal(), data);
	}

	@Override
	public void addCustomer(CustomerVo customerVo) {
		this.customerMapper.insertSelective(customerVo);
	}

	@Override
	public void deleteCustomer(String identity) {
		this.customerMapper.deleteByPrimaryKey(identity);
	}

	@Override
	public void deleteBatchCustomer(String[] identitys) {
		for (String identity : identitys) {
			this.deleteCustomer(identity);
		}
	}

	@Override
	public void updateCustomer(CustomerVo customerVo) {
		this.customerMapper.updateByPrimaryKeySelective(customerVo);
	}


	/**
	 * 通过身份证号查询客户
	 * @param identity
	 * @return
	 */
	@Override
	public Customer queryCustomerByIdentity(String identity) {
		return this.customerMapper.selectByPrimaryKey(identity);
	}

	/**
	 * 查询所有客户数据不分页
	 * @param customerVo
	 * @return
	 */
	@Override
	public List<Customer> queryAllCustomerForList(CustomerVo customerVo) {
		return this.customerMapper.queryAllCustomer(customerVo);
	}

}
