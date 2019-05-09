package com.hammerdown.xxbackend.controller;


import com.hammerdown.xxbackend.bean.TpFood;
import com.hammerdown.xxbackend.mapper.TpFoodMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;


@RestController
public class TpFoodController {

    @Autowired
    TpFoodMapper tpFoodMapper;


    @GetMapping("/food")
    public List<TpFood> getTpFood(){
        return tpFoodMapper.getTpFoodByHot();
    }

    @GetMapping("/findfood/{name}")
    public List<TpFood> findFoodByName(@PathVariable(value="name") String name){
        return tpFoodMapper.findFoodByName(name);
    }

}
