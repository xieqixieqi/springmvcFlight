package com.zking.flight.controller.xq;

import com.opensymphony.xwork2.ModelDriven;
import com.zking.flight.pojo.xq.F_Menu;
import com.zking.flight.service.xq.IMenuService;
import com.zking.flight.service.xq.impl.MenuServiceimpl;
import com.zking.flight.util.CommonAll;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MenuController extends CommonAll implements ModelDriven<F_Menu> {
    private F_Menu menus = new F_Menu();
    @Autowired
    private IMenuService ims = new MenuServiceimpl();



    @Override
    public F_Menu getModel() {
        return menus;
    }


    @ResponseBody
    @RequestMapping("findMenuPaging")
    public Map findMenuPaging() {
        List<F_Menu> lm = ims.findMenuPaging(menus);
        Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", lm.size());
        map.put("data", lm);

       return map;
    }


    @RequestMapping("AddMenu")
    public String AddMenu() {
        System.out.println("---"+menus);
        int index = ims.AddMenu(menus);
        if (index > 0) {
            out = "y";
        }
        HttpServletResponse response = ServletActionContext.getResponse();
        print(out,response);
        return "Jurisdiction/menu";
    }


}
