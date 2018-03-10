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
import project.ta.elearning.dto.Tb_levelDto;
import project.ta.elearning.service.Tb_levelService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_levelController {
    @Autowired
    Tb_levelService tb_levelService;
    
    @RequestMapping(value = "/form_tambah_level",method = RequestMethod.GET)
    public String formTambahLevel(ModelMap map,Tb_levelDto levelDto){
        map.addAttribute("levelDto", levelDto);
        return "admin/level/form_tambah_level";
    }
    
    @RequestMapping(value = "/form_ubah_level",method = RequestMethod.GET)
    public String formUbahLevel(ModelMap map,Tb_levelDto levelDto,Integer id){
        levelDto = tb_levelService.getDataById(id);
        map.addAttribute("levelDto", levelDto);
        return "admin/level/form_ubah_level";
    }
    
    @RequestMapping(value = "/save_level",method = RequestMethod.POST)
    public String saveLevel(Tb_levelDto levelDto){
        tb_levelService.saveData(levelDto);
        return "redirect:view_level.htm";
    }
    
    @RequestMapping(value = "/update_level",method = RequestMethod.POST)
    public String ubahLevel(Tb_levelDto levelDto){
        tb_levelService.updateData(levelDto);
        return "redirect:view_level.htm";
    }
    
    @RequestMapping(value = "/view_level",method = RequestMethod.GET)
    public String viewLevel(Tb_levelDto levelDto,ModelMap map){
        List<Tb_levelDto> listDto = tb_levelService.getData();
        map.addAttribute("listLevel", listDto);
        return "admin/level/view_level";
    }
//    @ResponseBody
    @RequestMapping(value = "/delete_level",method = RequestMethod.GET)
    public String deleteLevel(Integer id){
        tb_levelService.deleteData(id);
        return "redirect:view_level.htm";
    }
    
}
