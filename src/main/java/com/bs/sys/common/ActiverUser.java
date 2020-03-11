package com.bs.sys.common;

import com.bs.sys.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @Author: lyk lombok
 */
@Data   //相当于Lombok注解：@ToString @EqualsAndHashCode @Getter @Setter @RequiredArgsConstructor
@AllArgsConstructor //生成全参构造器
@NoArgsConstructor  //生成无参构造器
public class ActiverUser {

    private User user;

    private List<String> roles;

    private List<String> permission;

}
