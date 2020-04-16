package com.bs.sys.common;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 */
@Component
public class SpringUtil implements ApplicationContextAware {

    private static ApplicationContext applicationContext;

    @Override
    public void setApplicationContext(ApplicationContext act) throws BeansException {
        applicationContext = act;
    }

    public static ApplicationContext getApplicationContext(){
        return applicationContext;
    }

    //前面的<T>声明为泛型方法，入参为泛型,Class<T>本方法接收一个泛型类，后面的T告诉方法将会返回一个T类型的值
    public static <T> T getBean(Class<T> cls){
        return applicationContext.getBean(cls);
    }
}
