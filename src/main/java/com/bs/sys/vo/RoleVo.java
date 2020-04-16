package com.bs.sys.vo;

import com.bs.sys.entity.Role;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class RoleVo extends Role {

    private Integer page=1;
    private Integer limit=10;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

}
