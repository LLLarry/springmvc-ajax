package com.larry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpSession;

/**
 * @author larry
 * @create 2021-03-02 15:58
 */
@Controller
public class LoginController {
    /* 跳转到login页面 */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /* 跳转到login页面 */
    @RequestMapping("/handlelogin")
    public String handlelogin(String username, String password, Model model, HttpSession session) {
        if("larry".equalsIgnoreCase(username)){ // 用户登录成功
            session.setAttribute("USER_SESSION", username);
            return "redirect:/book/allbooks";
        } else {
            model.addAttribute("msg", "对不起，您输入的用户名或密码有误");
            return "login";
        }
    }
}
