/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import project.ta.elearning.dto.Tb_userDto;
import project.ta.elearning.dto.UserDto;
import project.ta.elearning.service.Tb_userService;
import project.ta.elearning.service.UserService;

/**
 *
 * @author Sou
 */
@SessionAttributes({"username", "password","firstname","lastname","role"})
@Controller
public class LoginController {
//    @Autowired
//    UserService userService;
//    @RequestMapping(value = "/loginAction" , method =  RequestMethod.GET)
//    public String loginAction(String username,String password,HttpSession session,ModelMap modelMap){
//        int data = userService.actionLogin(username,password );
//        if(data > 0) {
//            return "index";
//        } else {
//            UserDto  userDto = new UserDto();
//            modelMap.addAttribute("loginDto", userDto);
//            return "login";
//        }
//        
//    }
    @Autowired
    Tb_userService tb_userService;
    @RequestMapping(value = "/loginAction" , method =  RequestMethod.POST)
    public String loginAction(String username,String password,HttpSession session,ModelMap modelMap){
        int data = tb_userService.loginUser(username, password);
        Tb_userDto listUser = tb_userService.selectUser(username, password);
        
        if(data > 0) {
            modelMap.addAttribute("username", username);
            modelMap.addAttribute("password", password);
            modelMap.addAttribute("role", listUser.getId_role());
            if(listUser.getId_role()==1){
                return "mahasiswa/index";
            } else if(listUser.getId_role()==2){
                return "dosen/index";
            }
            return "index";
        } else {
            Tb_userDto   userDto = new Tb_userDto();
            modelMap.addAttribute("loginDto", userDto);
            return "login";
        }
    }
}
