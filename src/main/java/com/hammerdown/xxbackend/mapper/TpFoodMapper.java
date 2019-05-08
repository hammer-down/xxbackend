package com.hammerdown.xxbackend.mapper;


import com.hammerdown.xxbackend.bean.TpFood;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;


@Mapper
public interface TpFoodMapper {


    @Select("select * from tp_food where f_hot=(select max(f_hot) from tp_food)")
    public List<TpFood> getTpFoodByHot();

    @Select("select * from tp_food where f_name like CONCAT('%',#{name},'%')")
    public List<TpFood> findFoodByName(String name);

}

