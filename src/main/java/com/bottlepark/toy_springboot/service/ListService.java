package com.bottlepark.toy_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bottlepark.toy_springboot.controller.ListController;
import com.bottlepark.toy_springboot.dao.ListDao;

@Service
public class ListService {
    @Autowired
    ListDao listDao;

    // public Object deleteAndGetList(Object dataMap){
    //     Object result = this.delete(dataMap);
    //     result = this.getList(dataMap);
    //     return result;
    // }

    // public Object updateAndGetList(Object dataMap){
    //     Object result =  this.updateOne(dataMap);
    //         result = this.getList(dataMap);
    //         return result;
    // }
    
    public Object getList(Object dataMap){
        String sqlMapId = "List.selectFromUSERS_LIST";
        Object result = listDao.getList(sqlMapId, dataMap);
        return result;
    }

    // public Object getOne(Object dataMap){
    //     String sqlMapId = "CommonCodeOur.selectByUID";

    //     Object result = listDao.getOne(sqlMapId, dataMap);
    //     return result;
    // }

    // public Object updateOne(Object dataMap){
    //     String sqlMapId = "CommonCodeOur.updateByUID";

    //     Object result = listDao.update(sqlMapId, dataMap);
    //     return result;    
    // }

    // public Object insertOne(Object dataMap){
    //     String sqlMapId = "CommonCodeOur.insertWithUID";

    //     Object result = listDao.insert(sqlMapId, dataMap);
    //     return result;    
    // }

    // public Object delete(Object dataMap){
    //     String sqlMapId = "CommonCodeOur.deleteByUID";

    //     Object result = listDao.delete(sqlMapId, dataMap);
    //     return result;    
    // }
}
