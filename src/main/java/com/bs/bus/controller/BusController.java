package com.bs.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("bus")
public class BusController {
    @RequestMapping("myms")
    public String say(){
        return "bus/message/mymessage";
    }

    @RequestMapping("reply")
    public String reply(){
        return "bus/message/reply";
    }

    @RequestMapping("addscore")
    public String addscore(){
        return "bus/score/scoreadd";
    }

    @RequestMapping("search")
    public String scoreSearch(){
        return "bus/score/search";
    }
}
