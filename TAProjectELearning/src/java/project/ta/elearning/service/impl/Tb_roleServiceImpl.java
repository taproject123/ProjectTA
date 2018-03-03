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
import project.ta.elearning.dao.Tb_roleDao;
import project.ta.elearning.dto.Tb_roleDto;
import project.ta.elearning.model.Tb_roleModel;
import project.ta.elearning.service.Tb_roleService;

/**
 *
 * @author Sou
 */
@Transactional
@Service
public class Tb_roleServiceImpl implements Tb_roleService{

    @Autowired
    Tb_roleDao tb_roleDao;
    @Override
    public List<Tb_roleDto> getData() {
        List<Tb_roleDto> listDto= new ArrayList<>();
        List<Tb_roleModel> listModel = tb_roleDao.getData();
        if(listModel.size()>0){
            for (Tb_roleModel list : listModel) {
                Tb_roleDto roleDto = new Tb_roleDto();
                
                roleDto.setId(list.getId());
                roleDto.setName(list.getName());
                roleDto.setShortname(list.getShortname());
                roleDto.setDescription(list.getDescription());
                listDto.add(roleDto);
            }
        }
        return listDto;
    }
    
}
