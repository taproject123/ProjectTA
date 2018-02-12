/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import project.ta.elearning.dto.UserDto;
import project.ta.elearning.service.UserService;

/**
 *
 * @author Sou
 */
@SessionAttributes({"username", "jenis"})
@Controller
public class LoginController {
    @Autowired
    UserService userService;
    @RequestMapping(value = "/loginAction" , method =  RequestMethod.GET)
    public String loginAction(String username,String password,HttpSession session,ModelMap modelMap){
        int data = userService.actionLogin(username,password );
        if(data > 0) {
            return "index";
        } else {
            UserDto  userDto = new UserDto();
            modelMap.addAttribute("loginDto", userDto);
            return "login";
        }
        
    }
}
