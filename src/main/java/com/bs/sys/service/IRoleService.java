package com.bs.sys.service;

import com.bs.sys.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * InnoDB free: 9216 kB 服务类
 * </p>
 *
 */
public interface IRoleService extends IService<Role> {

    /**
     * 根据角色ID查询当前角色拥有的菜单ID和权限ID
     * @param roleId
     * @return
     */
    List<Integer> queryRolePermissionIdsByRid(Integer roleId);

    /**
     * 保存角色和菜单权限之间的关系
     * @param rid
     * @param ids
     */
    void saveRolePermission(Integer rid, Integer[] ids);

    /**
     * 查询当前用户拥有的角色ID集合
     * @param id
     * @return
     */
    List<Integer> queryUserRoleIdsByUid(Integer id);
}
