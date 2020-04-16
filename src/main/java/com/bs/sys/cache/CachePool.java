package com.bs.sys.cache;

import com.bs.sys.common.SpringUtil;
import com.bs.sys.entity.Dept;
import com.bs.sys.entity.User;
import com.bs.sys.mapper.DeptMapper;
import com.bs.sys.mapper.UserMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 */
public class CachePool {

    /**
     * 所有的缓存数据放到这个CACHE_CONTAINER  类似于redis
     */
    public static volatile Map<String,Object> CACHE_CONTAINER = new HashMap<>();

    /**
     * 根据KEY删除缓存
     * @param key   键
     */
    public static void removeCacheByKey(String key){
        if (CACHE_CONTAINER.containsKey(key)){
            CACHE_CONTAINER.remove(key);
        }
    }

    /**
     * 清空所有缓存
     */
    public static void removeAll(){
        CACHE_CONTAINER.clear();
    }

    /**
     * 同步缓存
     */
    public static void syncData(){
        //同步部门数据
        DeptMapper deptMapper = SpringUtil.getBean(DeptMapper.class);
        List<Dept> deptList = deptMapper.selectList(null);
        for (Dept dept : deptList) {
            CACHE_CONTAINER.put("dept:"+dept.getId(),dept);
        }
        //同步用户数据
        UserMapper userMapper = SpringUtil.getBean(UserMapper.class);
        List<User> userList = userMapper.selectList(null);
        for (User user : userList) {
            CACHE_CONTAINER.put("user:"+user.getId(),user);
        }




    }


}
