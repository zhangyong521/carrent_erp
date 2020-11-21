package com.zy.sys.service;


import com.zy.sys.domain.News;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.NewsVo;

/**
 * @author 17616
 */
public interface NewsService {

    /**
     * 查询所有公告
     *
     * @param newsVo
     * @return
     */
    DataGridView queryAllNews(NewsVo newsVo);

    /**
     * 添加公告
     *
     * @param newsVo
     */
    void addNews(NewsVo newsVo);

    /**
     * 删除公告
     *
     * @param newsid
     */
    void deleteNews(Integer newsid);

    /**
     * 批量删除公告
     *
     * @param ids
     */
    void deleteBatchNews(Integer[] ids);

    /**
     * 更新公告
     *
     * @param newsVo
     */
    void updateNews(NewsVo newsVo);

    /**
     * 根据id查询新闻
     * @param id
     * @return
     */
    News queryNewsById(Integer id);
}
