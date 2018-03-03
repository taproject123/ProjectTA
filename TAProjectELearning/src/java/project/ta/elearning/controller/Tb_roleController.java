/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import project.ta.elearning.dto.Tb_roleDto;
import project.ta.elearning.service.Tb_roleService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_roleController {
    @Autowired
    Tb_roleService tb_roleService;
    
    @RequestMapping(value = "/form_tambah_role",method = RequestMethod.GET)
    public String formTambahRole(ModelMap map,Tb_roleDto roleDto){
        map.addAttribute("roleDto", roleDto);
        return "admin/role/form_tambah_role";
    }
    
    @RequestMapping(value = "/save_role",method = RequestMethod.POST)
    public String saveRole(Tb_roleDto roleDto){
        tb_roleService.saveData(roleDto);
        return "redirect:view_role.htm";
    }
    
    @RequestMapping(value = "/view_role",method = RequestMethod.GET)
    public String viewRole(Tb_roleDto roleDto,ModelMap map){
        List<Tb_roleDto> listDto = tb_roleService.getData();
        map.addAttribute("listRole", listDto);
        return "admin/role/view_role";
    }
//    @ResponseBody
    @RequestMapping(value = "/delete_role",method = RequestMethod.GET)
    public String deleteRole(Integer id){
        tb_roleService.deleteData(id);
        return "redirect:view_role.htm";
    }
    
    
}
