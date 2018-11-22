package com.zking.flight.service.xq;

import com.zking.flight.pojo.xq.F_Menu;

import java.util.List;

public interface IMenuService {


    public F_Menu findMenuById(F_Menu menu);


    public List<F_Menu> findMenuPaging(F_Menu menu);


    public int AddMenu(F_Menu menu);


    public int EditMenu(F_Menu menu);


    public int DeleteMenu(F_Menu menu);
}
