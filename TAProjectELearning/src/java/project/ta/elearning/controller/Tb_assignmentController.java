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
import project.ta.elearning.dto.Tb_assignmentDto;
import project.ta.elearning.service.Tb_assignmentService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_assignmentController {
    @Autowired
    Tb_assignmentService tb_assignmentService;
    
    @RequestMapping(value = "/form_tambah_assignment",method = RequestMethod.GET)
    public String formTambahAssignment(ModelMap map,Tb_assignmentDto assignmentDto){
        map.addAttribute("assignmentDto", assignmentDto);
        return "admin/assignment/form_tambah_assignment";
    }
    
    @RequestMapping(value = "/form_ubah_assignment",method = RequestMethod.GET)
    public String formUbahAssignment(ModelMap map,Tb_assignmentDto assignmentDto,Integer id){
        assignmentDto = tb_assignmentService.getDataById(id);
        map.addAttribute("assignmentDto", assignmentDto);
        return "admin/assignment/form_ubah_assignment";
    }
    
    @RequestMapping(value = "/save_assignment",method = RequestMethod.POST)
    public String saveAssignment(Tb_assignmentDto assignmentDto){
        tb_assignmentService.saveData(assignmentDto);
        return "redirect:view_assignment.htm";
    }
    
    @RequestMapping(value = "/update_assignment",method = RequestMethod.POST)
    public String ubahAssignment(Tb_assignmentDto assignmentDto){
        tb_assignmentService.updateData(assignmentDto);
        return "redirect:view_assignment.htm";
    }
//    @ResponseBody
    @RequestMapping(value = "/view_assignment",method = RequestMethod.GET)
    public String viewAssignment(Tb_assignmentDto assignmentDto,ModelMap map){
        List<Tb_assignmentDto> listDto = tb_assignmentService.getData();
        map.addAttribute("listAssignment", listDto);
        return "admin/assignment/view_assignment";
    }
//    @ResponseBody
    @RequestMapping(value = "/delete_assignment",method = RequestMethod.GET)
    public String deleteAssignment(Integer id){
        tb_assignmentService.deleteData(id);
        return "redirect:view_assignment.htm";
    }
    
}
