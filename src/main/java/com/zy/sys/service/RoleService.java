package com.zy.sys.service;

import com.zy.sys.domain.Role;
import com.zy.sys.utils.DataGridView;
import com.zy.sys.vo.RoleVo;

import java.util.List;

public interface RoleService {

    /**
     * 查询所有角色返回
     * List<Role>
     */
    List<Role> queryAllRoleForList(RoleVo roleVo);

    /**
     * 根据用户id查询用户的可用角色
     */
    List<Role> queryRoleByUserIdForList(RoleVo roleVo, Integer userId);

    /**
     * 查询所有角色
     *
     * @param roleVo
     * @return
     */
    DataGridView queryAllRole(RoleVo roleVo);

    /**
     * 添加角色
     *
     * @param roleVo
     */
    void addRole(RoleVo roleVo);

    /**
     * 修改角色
     *
     * @param roleVo
     */
    void updateRole(RoleVo roleVo);

    /**
     * 根据id删除角色
     *
     * @param roleid
     */
    void deleteRole(Integer roleid);

    /**
     * 批量删除角色
     *
     * @param ids
     */
    void deleteBatchRole(Integer[] ids);

    /**
     * 加载角色管理分配菜单的json
     *
     * @param roleid
     * @return
     */
    DataGridView initRoleMenuTreeJson(Integer roleid);

    /**
     * 保存角色和菜单的关系
     *
     * @param roleVo
     */
    void saveRoleMenu(RoleVo roleVo);
}