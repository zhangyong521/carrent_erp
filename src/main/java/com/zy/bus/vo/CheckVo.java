package com.zy.bus.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import com.zy.bus.domain.Check;

/**
 * @author 17616
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CheckVo extends Check {

	/**
	 * 分页参数
	 */
	private Integer page;
	private Integer limit;
	/**
	 * 时间
	 */
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date startTime;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date endTime;
	
}
