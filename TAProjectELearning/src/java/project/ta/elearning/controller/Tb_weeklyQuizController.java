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
import project.ta.elearning.dto.Tb_weeklyQuizDto;
import project.ta.elearning.service.Tb_weeklyQuizService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_weeklyQuizController {
    @Autowired
    Tb_weeklyQuizService tb_weeklyQuizService;
    
    @RequestMapping(value = "/form_tambah_weeklyQuiz",method = RequestMethod.GET)
    public String formTambahWeeklyQuiz(ModelMap map,Tb_weeklyQuizDto weeklyQuizDto){
        map.addAttribute("weeklyQuizDto", weeklyQuizDto);
        return "admin/weeklyQuiz/form_tambah_weeklyQuiz";
    }
    
    @RequestMapping(value = "/form_ubah_weeklyQuiz",method = RequestMethod.GET)
    public String formUbahWeeklyQuiz(ModelMap map,Tb_weeklyQuizDto weeklyQuizDto,Integer id){
        weeklyQuizDto = tb_weeklyQuizService.getDataById(id);
        map.addAttribute("weeklyQuizDto", weeklyQuizDto);
        return "admin/weeklyQuiz/form_ubah_weeklyQuiz";
    }
    
    @RequestMapping(value = "/save_weeklyQuiz",method = RequestMethod.POST)
    public String saveWeeklyQuiz(Tb_weeklyQuizDto weeklyQuizDto){
        tb_weeklyQuizService.saveData(weeklyQuizDto);
        return "redirect:view_weeklyQuiz.htm";
    }
    
    @RequestMapping(value = "/update_weeklyQuiz",method = RequestMethod.POST)
    public String ubahWeeklyQuiz(Tb_weeklyQuizDto weeklyQuizDto){
        tb_weeklyQuizService.updateData(weeklyQuizDto);
        return "redirect:view_weeklyQuiz.htm";
    }
    
    @RequestMapping(value = "/view_weeklyQuiz",method = RequestMethod.GET)
    public String viewWeeklyQuiz(Tb_weeklyQuizDto weeklyQuizDto,ModelMap map){
        List<Tb_weeklyQuizDto> listDto = tb_weeklyQuizService.getData();
        map.addAttribute("listWeeklyQuiz", listDto);
        return "admin/weeklyQuiz/view_weeklyQuiz";
    }
    @RequestMapping(value = "/delete_weeklyQuiz",method = RequestMethod.GET)
    public String deleteWeeklyQuiz(Integer id){
        tb_weeklyQuizService.deleteData(id);
        return "redirect:view_weeklyQuiz.htm";
    }
    
}
