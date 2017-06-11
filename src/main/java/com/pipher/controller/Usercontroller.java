package com.pipher.controller;

import com.pipher.entity.User;
import com.pipher.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by pipher on 2017/6/11.
 */
@Controller
@RequestMapping("/user")
public class Usercontroller {

    @Resource
    private UserService userService;


    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request){
        User resultUser = userService.login(user);
        if(resultUser == null){
            request.setAttribute("user",user);
            request.setAttribute("errorMsg","用户名或密码错误！");
            return "background/login";
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("currentUser",resultUser);
            return "redirect:/background/main.jsp";
        }


    }



}
