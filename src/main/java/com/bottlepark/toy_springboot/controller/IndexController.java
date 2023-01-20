package com.bottlepark.toy_springboot.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
    @RequestMapping(value = {"", "/", "/index"})  
    public ModelAndView index(ModelAndView mv){
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = {"/survey"})    
    public ModelAndView survey(ModelAndView mv){
        mv.setViewName("/views/survey");
        return mv;
    }

    @RequestMapping(value = {"/login"}) 
    public ModelAndView login(ModelAndView mv, HttpServletRequest request, HttpServletResponse response){
        mv.addObject(response);
        mv.addObject(request);
        mv.setViewName("/views/login");
        return mv;
    }

    @RequestMapping(value = {"/statisticsPrintUserServey"}) 
    public ModelAndView statisticsPrintUserServey(ModelAndView mv){
        mv.setViewName("/views/result1");
        return mv;
    }
    @RequestMapping(value = {"/statisticsUsersServey"}) 
    public ModelAndView statisticsUsersServey(ModelAndView mv){
        mv.setViewName("/views/result2");
        return mv;
    }
    @RequestMapping(value = {"/statisticsServey"}) 
    public ModelAndView statisticsServey(ModelAndView mv){
        mv.setViewName("/views/result3");
        return mv;
    }

}
