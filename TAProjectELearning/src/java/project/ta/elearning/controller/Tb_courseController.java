/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import project.ta.elearning.dto.Tb_roleDto;
import project.ta.elearning.dto.Tb_courseDto;
import project.ta.elearning.service.Tb_roleService;
import project.ta.elearning.service.Tb_courseService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_courseController {

    @Autowired
    Tb_courseService tb_courseService;
    
    @Autowired
    Tb_roleService tb_roleService;


    @RequestMapping(value = "/save_course", method = RequestMethod.POST)
    public String saveData(Tb_courseDto courseDto) {
        try {
            tb_courseService.saveData(courseDto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:view_course.htm";
    }

    @RequestMapping(value = "/view_course",method = RequestMethod.GET)
    public String viewCourse(ModelMap map){
        List<Tb_courseDto> listCourse = tb_courseService.getData();
        map.addAttribute("listCourse", listCourse);
        return "admin/course/view_course";
    }
    
    @RequestMapping(value = "/form_tambah_course",method = RequestMethod.GET)
    public String formTambahCourse(ModelMap map,Tb_courseDto courseDto){
        map.addAttribute("courseDto", courseDto);
        return "admin/course/form_tambah_course";
    }
//    @ResponseBody
    @RequestMapping(value = "/form_ubah_course",method = RequestMethod.GET)
    public String formUbahCourse(ModelMap map,Tb_courseDto courseDto,Integer id){
        courseDto = tb_courseService.getDataById(id);
        map.addAttribute("courseDto", courseDto);
        return "admin/course/form_ubah_course";
    }
    
    @RequestMapping(value = "/update_course",method = RequestMethod.POST)
    public String ubahCourse(Tb_courseDto courseDto){
        tb_courseService.updateData(courseDto);
        return "redirect:view_course.htm";
    }
//    @ResponseBody
    @RequestMapping(value = "/delete_course",method = RequestMethod.GET)
    public String deleteCourse(Integer id){
        tb_courseService.deleteData(id);
        return "redirect:view_course.htm";
    }

}
