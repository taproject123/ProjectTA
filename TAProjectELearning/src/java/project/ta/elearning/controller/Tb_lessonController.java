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
import project.ta.elearning.dto.Tb_lessonDto;
import project.ta.elearning.service.Tb_lessonService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_lessonController {
    @Autowired
    Tb_lessonService tb_lessonService;
    
    @RequestMapping(value = "/form_tambah_lesson",method = RequestMethod.GET)
    public String formTambahLesson(ModelMap map,Tb_lessonDto lessonDto){
        map.addAttribute("lessonDto", lessonDto);
        return "admin/lesson/form_tambah_lesson";
    }
    
    @RequestMapping(value = "/form_ubah_lesson",method = RequestMethod.GET)
    public String formUbahLesson(ModelMap map,Tb_lessonDto lessonDto,Integer id){
        lessonDto = tb_lessonService.getDataById(id);
        map.addAttribute("lessonDto", lessonDto);
        return "admin/lesson/form_ubah_lesson";
    }
    
    @RequestMapping(value = "/save_lesson",method = RequestMethod.POST)
    public String saveLesson(Tb_lessonDto lessonDto){
        tb_lessonService.saveData(lessonDto);
        return "redirect:view_lesson.htm";
    }
    
    @RequestMapping(value = "/update_lesson",method = RequestMethod.POST)
    public String ubahLesson(Tb_lessonDto lessonDto){
        tb_lessonService.updateData(lessonDto);
        return "redirect:view_lesson.htm";
    }
//    @ResponseBody
    @RequestMapping(value = "/view_lesson",method = RequestMethod.GET)
    public String viewLesson(Tb_lessonDto lessonDto,ModelMap map){
        List<Tb_lessonDto> listDto = tb_lessonService.getData();
        map.addAttribute("listLesson", listDto);
        return "admin/lesson/view_lesson";
    }
//    @ResponseBody
    @RequestMapping(value = "/delete_lesson",method = RequestMethod.GET)
    public String deleteLesson(Integer id){
        tb_lessonService.deleteData(id);
        return "redirect:view_lesson.htm";
    }
    
}
