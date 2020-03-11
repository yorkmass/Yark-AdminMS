package com.bs.sys.vo;

import com.bs.sys.entity.Loginfo;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @Author: 落亦-
 * @Date: 2019/11/23 18:19
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class LoginfoVo extends Loginfo {

    private Integer page=1;
    private Integer limit=10;

    //接收多个id，传入的是用&ids=x&ids=x 是个数组
    private Integer[] ids;
    //搜索条件1
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;
    //搜索条件2
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

}
