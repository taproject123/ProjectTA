/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.ta.elearning.dto.Tb_userDto;
import project.ta.elearning.service.Tb_userService;

/**
 *
 * @author Sou
 */
@Controller
public class Tb_userController {

    @Autowired
    Tb_userService tb_userService;

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String form_tambah_user(Tb_userDto userDto, ModelMap map, HttpSession session, HttpServletRequest req) {
        if (session.getAttribute("username") != null) {
            map.addAttribute("userDto", userDto);
            return "user/form_tambah_user";
        }
        map.addAttribute("loginDto", userDto);
        return "login";
    }

    @RequestMapping(value = "/save_user", method = RequestMethod.POST)
    public String saveData(Tb_userDto userDto) {
        tb_userService.saveData(userDto);
        return "redirect:form_tambah_user.htm";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String viewLogin(HttpSession session, ModelMap map, Tb_userDto userDto) {
        map.addAttribute("loginDto", userDto);
        try {
            if (session.getAttribute("username") == null) {
            
            return "login";
        }
            Integer role = Integer.parseInt(session.getAttribute("role").toString());
            if (role == 1) {
                return "mahasiswa/index";
            } else if (role == 2) {
                return "dosen/index";
            }
        } catch (Exception e) {
            return "login";
        }
        
        
return "login";
    }

}
