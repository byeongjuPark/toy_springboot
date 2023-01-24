package com.bottlepark.toy_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bottlepark.toy_springboot.dao.ListDao;
import com.bottlepark.toy_springboot.service.ListService;



@Controller
@RequestMapping(value = "/list")
public class ListController {
    @Autowired 
    ListService listService;

    @RequestMapping(value = {"","/"} , method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = listService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/views/list");
        return modelAndView;
    }

    @RequestMapping(value = "/del/{USERS_UID}", method = RequestMethod.GET)
    public Object delete(@RequestParam Map<String, Object> params, @PathVariable String USERS_UID,  ModelAndView modelAndView) {
        params.put("USERS_UID", USERS_UID);
        listService.delete(params);

        Object resultMap = listService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/views/list");

        return modelAndView;
    }
    @RequestMapping(value = "/edit/{USERS_UID}", method = RequestMethod.GET)
    public Object edit(@RequestParam Map<String, Object> params, @PathVariable String USERS_UID,  ModelAndView modelAndView) {
        params.put("USERS_UID", USERS_UID);
        Object resultMap = listService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/views/edit");

        return modelAndView;
    }
    @RequestMapping(value = "/edit/update", method = RequestMethod.POST)
    public Object update(@RequestParam Map<String, Object> params,  ModelAndView modelAndView) {
        Object resultMap = listService.updateAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/views/list");

        return modelAndView;
    }
}
