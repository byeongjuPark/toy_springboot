package com.bottlepark.toy_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bottlepark.toy_springboot.dao.ListDao;
import com.bottlepark.toy_springboot.service.ListService;



@Controller
public class ListController {
    @Autowired 
    ListService listService;

    @RequestMapping(value = "/list" , method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = listService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/views/list");
        return modelAndView;
    }
}
