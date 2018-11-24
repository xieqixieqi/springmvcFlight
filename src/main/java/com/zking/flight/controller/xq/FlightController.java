package com.zking.flight.controller.xq;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;



@Controller
public class FlightController {



    @ResponseBody
    @RequestMapping(value = "FindFlightPaging")
    public Map FindFlightPaging()  throws  Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("msg", "1-");
        System.out.println("7111主机提交");
        System.out.println("7711主机提交");
        System.out.println("主机提交");
        System.out.println("q2分1111提交");
        map.put("msg", "-");
        System.out.println("分机8887提交");

        map.put("count", "");
        map.put("data", "");
        return map;
    }
}
