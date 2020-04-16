package com.bs.sys.realm;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.bs.sys.common.ActiverUser;
import com.bs.sys.common.Constast;
import com.bs.sys.entity.Permission;
import com.bs.sys.entity.User;
import com.bs.sys.service.IPermissionService;
import com.bs.sys.service.IRoleService;
import com.bs.sys.service.IUserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 */
public class  UserRealm extends AuthorizingRealm {

    @Autowired
    /**
     * 当需要使用的时候，才加载。  即：当CacheAspect被解析之后，userService才会解析，要不然切面会不生效
     */
    @Lazy
    private IUserService userService;

    @Autowired
    @Lazy
    private IPermissionService permissionService;

    @Autowired
    @Lazy
    private IRoleService roleService;

    @Override
    public String getName(){
        return this.getClass().getSimpleName();
    }

    /*
    shiro源码解析
    public interface PrincipalCollection extends Iterable, Serializable {
	Object getPrimaryPrincipal(); //得到主要的身份
	<T> T oneByType(Class<T> type); //根据身份类型获取第一个
	<T> Collection<T> byType(Class<T> type); //根据身份类型获取一组
	List asList(); //转换为List
	Set asSet(); //转换为Set
	Collection fromRealm(String realmName); //根据Realm名字获取
	Set<String> getRealmNames(); //获取所有身份验证通过的Realm名字
	boolean isEmpty(); //判断是否为空
}
     */

    /**
     * 授权
     * @param principalCollection doGetAuthorizationInfo方法有个principalCollection参数,
     *                            principalCollection参数是用户的验证信息的封装参数.所以我们需要通过这个参数拿到用户账号信息
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        ActiverUser activerUser = (ActiverUser) principalCollection.getPrimaryPrincipal();
        User user = activerUser.getUser();
        //添加管理员权限对象
        List<String> superPermission = new ArrayList<>();
        //管理员权限设置为所有页面权限
        superPermission.add("*:*");
        //获得登录用户拥有的权限
        List<String> permissions = activerUser.getPermission();
        //如果用户为类型为管理员，则添加管理员权限，如果为其他，当用户数据库有权限列表时候，设置用户对应的权限
        if (user.getType().equals(Constast.USER_TYPE_SUPER)){
            authorizationInfo.addStringPermissions(superPermission);
        }else {
            if (null!=permissions&&permissions.size()>0){
                authorizationInfo.addStringPermissions(permissions);
            }
        }
        return authorizationInfo;
    }

    /**
     * 认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("loginname",authenticationToken.getPrincipal().toString());
        //通过用户名从数据库中查询出该用户
        User user = userService.getOne(queryWrapper);
        if (null!=user){
            ActiverUser activerUser = new ActiverUser();
            activerUser.setUser(user);

            //根据用户ID查询percode
            QueryWrapper<Permission> qw = new QueryWrapper<>();
            //设置只能查询菜单
            qw.eq("type", Constast.TYPE_PERMISSION);
            //设置只能查询可用的菜单
            qw.eq("available",Constast.AVAILABLE_TRUE);
            Integer userId = user.getId();
            //根据用户ID查询角色ID
            List<Integer> currentUserRoleIds = roleService.queryUserRoleIdsByUid(userId);
            //根据角色ID查询出权限ID
            Set<Integer> pids = new HashSet<>();
            for (Integer rid : currentUserRoleIds) {
                List<Integer> permissionIds = roleService.queryRolePermissionIdsByRid(rid);
                pids.addAll(permissionIds);
            }
            List<Permission> list = new ArrayList<>();
            if (pids.size()>0){
                qw.in("id",pids);
                list = permissionService.list(qw);
            }
            List<String> percodes = new ArrayList<>();
            for (Permission permission : list) {
                percodes.add(permission.getPercode());
            }
            //放到activerUser
            activerUser.setPermission(percodes);

            //生成盐
            ByteSource credentialsSalt=ByteSource.Util.bytes(user.getSalt());
            /**
             * 参数说明：
             * 参数1：活动的User
             * 参数2：从数据库里面查询出来的密码(已经通过MD5加密)
             * 参数3：从数据库里面查询出来的盐
             * 参数4：当前类名
             */
            //+盐加密,防止初始密码一致，返回认证成功的身份信息,这样通过配置中的 HashedCredentialsMatcher 进行自动校验
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(activerUser,user.getPwd(),credentialsSalt,this.getName());
            return info;
        }
        return null;
    }
}
