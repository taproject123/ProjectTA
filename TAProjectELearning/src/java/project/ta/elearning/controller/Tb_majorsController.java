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
import project.ta.elearning.dto.Tb_majorsDto;
import project.ta.elearning.service.Tb_majorsService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_majorsController {
    @Autowired
    Tb_majorsService tb_majorsService;
    
    @RequestMapping(value = "/form_tambah_majors",method = RequestMethod.GET)
    public String formTambahMajors(ModelMap map,Tb_majorsDto majorsDto){
        map.addAttribute("majorsDto", majorsDto);
        return "admin/majors/form_tambah_majors";
    }
    
    @RequestMapping(value = "/form_ubah_majors",method = RequestMethod.GET)
    public String formUbahMajors(ModelMap map,Tb_majorsDto majorsDto,Integer id){
        majorsDto = tb_majorsService.getDataById(id);
        map.addAttribute("majorsDto", majorsDto);
        return "admin/majors/form_ubah_majors";
    }
    
    @RequestMapping(value = "/save_majors",method = RequestMethod.POST)
    public String saveMajors(Tb_majorsDto majorsDto){
        tb_majorsService.saveData(majorsDto);
        return "redirect:view_majors.htm";
    }
    
    @RequestMapping(value = "/update_majors",method = RequestMethod.POST)
    public String ubahMajors(Tb_majorsDto majorsDto){
        tb_majorsService.updateData(majorsDto);
        return "redirect:view_majors.htm";
    }
    
    @RequestMapping(value = "/view_majors",method = RequestMethod.GET)
    public String viewMajors(Tb_majorsDto majorsDto,ModelMap map){
        List<Tb_majorsDto> listDto = tb_majorsService.getData();
        map.addAttribute("listMajors", listDto);
        return "admin/majors/view_majors";
    }
//    @ResponseBody
    @RequestMapping(value = "/delete_majors",method = RequestMethod.GET)
    public String deleteMajors(Integer id){
        tb_majorsService.deleteData(id);
        return "redirect:view_majors.htm";
    }
    
}
