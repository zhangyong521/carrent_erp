package com.zy.bus.service;

import java.util.Map;

import com.zy.bus.vo.CheckVo;
import com.zy.sys.utils.DataGridView;

/**
 * 检查单管理的服务器接口
 *
 * @author 17616
 */
public interface CheckService {
	/**
	 * 根据出租单号加载检查单的表单数据
	 * @param rentid
	 * @return
	 */
	Map<String, Object> initCheckFormData(String rentid);

	/**
	 * 保存检查单数据
	 * @param checkVo
	 */
	void addCheck(CheckVo checkVo);

	/**
	 * 查询
	 * @param checkVo
	 * @return
	 */
	DataGridView queryAllCheck(CheckVo checkVo);

	/**
	 * 修改检查单
	 * @param checkVo
	 */
	void updateCheck(CheckVo checkVo);

}
