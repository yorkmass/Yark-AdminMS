package com.bs.sys.vo;

import lombok.Data;

/**
 * 和excel表一一映射
 */
@Data
public class UsersExcelVo {
    //登陆名称
    private String name;
    //用户名
    private String loginname;
    //所属部门
    private String deptname;
    //直属领导
    private String mgrname;
    //用户备注
    private String remark;
    //用户地址
    private String address;
    //角色
    private String rolename;
}
