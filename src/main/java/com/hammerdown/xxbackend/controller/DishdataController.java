package com.hammerdown.xxbackend.controller;


import com.hammerdown.xxbackend.bean.Dishdata;
import com.hammerdown.xxbackend.mapper.DishdataMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DishdataController {

    @Autowired
    DishdataMapper dishdataMapper;

    @GetMapping("/dish")
    public Dishdata getDishdata(){
        return dishdataMapper.getDishById();
    }
}
