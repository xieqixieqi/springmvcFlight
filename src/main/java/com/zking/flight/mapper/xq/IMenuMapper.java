package com.zking.flight.mapper.xq;

import com.zking.flight.pojo.xq.F_Menu;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface IMenuMapper {


    @Select("Select * from f_menu  where  id=#{id}")
    public F_Menu findMenuById(F_Menu menu);


    @Select("Select * from f_menu limit 1,5")
    public List<F_Menu> findMenuPaging(F_Menu menu);


    @Insert("insert into  f_menu value(uuid(),#{mname},#{murl})")
    public int AddMenu(F_Menu menu);

    @Insert("update  f_menu  set  name=#{mname},url=#{murl}  where id=#{id}")
    public int EditMenu(F_Menu menu);

    @Insert("delete from   f_menu where  id=#{id}")
    public int DeleteMenu(F_Menu menu);


}
