/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.ta.elearning.dao.Tb_userDao;
import project.ta.elearning.dto.Tb_userDto;
import project.ta.elearning.model.Tb_userModel;
import project.ta.elearning.service.Tb_userService;

/**
 *
 * @author Sou
 */
@Transactional
@Service
public class Tb_userServiceImpl implements Tb_userService{

    @Autowired
    Tb_userDao tb_userDao;
    
    @Override
    public void saveData(Tb_userDto userDto) {
        try {
            Tb_userModel userModel = new Tb_userModel();
            userModel.setId(userDto.getId());
            userModel.setFirstname(userDto.getFirstname());
            userModel.setLastname(userDto.getLastname());
            userModel.setUsername(userDto.getUsername());
            userModel.setPassword(userDto.getPassword());
            userModel.setId_role(userDto.getId_role());
            tb_userDao.saveData(userModel);
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    public Integer loginUser(String username, String password) {
        List<Tb_userModel> listModel=tb_userDao.loginUser(username, password);
        return listModel.size();
    }

    @Override
    public Tb_userDto selectUser(String username, String password) {
        List<Tb_userDto> listDto=new ArrayList<>();
        List<Tb_userModel> listModel=tb_userDao.loginUser(username, password);
        Integer index=0;
        Tb_userDto userDto=null;
        for (Tb_userModel lm : listModel) {
            userDto= new Tb_userDto();
            userDto.setId(lm.getId());
            userDto.setFirstname(lm.getFirstname());
            userDto.setLastname(lm.getLastname());
            userDto.setPassword(lm.getPassword());
            userDto.setUsername(lm.getUsername());
            userDto.setId_role(lm.getId_role());
        }
        return userDto;
    }
    
}
