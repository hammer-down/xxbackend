package com.hammerdown.xxbackend.mapper;


import com.hammerdown.xxbackend.bean.Dishdata;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DishdataMapper {

    @Select("select * from Dishdata where dishid=(select max(dishid) from Dishdata)")
    public Dishdata getDishById();
}
