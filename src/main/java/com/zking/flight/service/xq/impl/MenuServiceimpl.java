package com.zking.flight.service.xq.impl;


import com.zking.flight.mapper.xq.IMenuMapper;
import com.zking.flight.pojo.xq.F_Menu;
import com.zking.flight.service.xq.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("MenuServiceimpl")
public class MenuServiceimpl implements IMenuService {
   @Autowired
    private IMenuMapper imm;


    @Override
    public F_Menu findMenuById(F_Menu menu) {
        return imm.findMenuById(menu);
    }

    @Override
    public List<F_Menu> findMenuPaging(F_Menu menu) {
        return imm.findMenuPaging(menu);
    }

    @Override
    public int AddMenu(F_Menu menu) {
        return imm.AddMenu(menu);
    }

    @Override
    public int EditMenu(F_Menu menu) {
        return imm.EditMenu(menu);
    }

    @Override
    public int DeleteMenu(F_Menu menu) {
        return imm.DeleteMenu(menu);
    }
}
