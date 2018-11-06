package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Service.UserServiceImpl;
import com.Service.UserService;
import com.po.User;
@Controller
public class UserController {
	@Resource(name="UserServiceImpl")
	private UserServiceImpl UserServiceImpl;
	
	//private static final Log logger = LogFactory.getLog(UserController.class);

	@RequestMapping(value="/selectalluser")
	public String selectalluser(Model model){
		List<User> users = UserServiceImpl.selectallUser();
		model.addAttribute("Users", users);
		return "qwe";
	}
	
	@RequestMapping(value="/selectuserbyid")
	public String selectuserbyid(int userId){
		UserServiceImpl.selectuserByid(userId);
		return "blogcontent.jsp";
	}
	
	@RequestMapping(value="/updatauser")
	public String updatauser(User user,Model model){
		UserServiceImpl.updatauser(user);;
		this.UserServiceImpl.updatauser(user);
		return "qwe";
	}
	
	@RequestMapping(value="/insertusernotbyid")
	public String insertusernotbyid(User user){
		UserServiceImpl.insertusernotbyid(user);
		return "login.jsp";
	}
	
	@RequestMapping(value="/deluser")
	public String deluser(int userId,Model model){
		UserServiceImpl.deluser(userId);
		this.selectalluser(model);
		return "qwe";
	}
/*	@RequestMapping(value="/login")//登录 0的意思是验证成功，1的意思是只有账号验证成功
	public String login(String userName,String userPwd,String aa){
		String aaa = this.UserServiceImpl.login(userName, userPwd,aa);
		if(aaa == "0"){
			System.out.println(aaa);
			return "../selectindex?page=1";
		}else if(aaa == "1"){
			System.out.println(aaa);
		return"register.jsp";
		}
		else if(aaa == "3"){
			System.out.println(aaa);
			return "register.jsp";
		}
		return "../selectindex?page=1";
	}*/
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String toLogin(){
		return"../selectindex?page=1";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,String aa,Model model,HttpSession session){
		String username = user.getUserName();
		String userpwd = user.getUserPwd();
		String aaa = this.UserServiceImpl.login(username, userpwd,aa);
		//if(userId!=null){
			if(aaa.length() <3){
			int userid = Integer.parseInt(aaa);
			//System.out.println(userid);
			user.setUserId(userid);
			session.setAttribute("user", user);
			model.addAttribute("page", 1);  
	      return "redirect:/selectindex";
		}else if(aaa == "100"){
			model.addAttribute("msg", "密码错误，请重新输入");
			return"register.jsp";
		}
		else if(aaa == "300"){
			model.addAttribute("msg", "此账号不存在，请重新输入");
			return "register.jsp";
		}
		return "...";
	}
	@RequestMapping(value="/main")//用户主页面跳转
	public String toMain(){
		return "../selectindex?page=1";
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		//清除session
		session.invalidate();
		return "login.jsp";
	}
	@RequestMapping(value="/modifyuserpwd")
	public String modifyuserpwd(User user,HttpServletRequest request){
		this.UserServiceImpl.modifyuserpwdbyname(user);
		return "login.jsp";
	}
	@RequestMapping(value="/searchuserbyname")
	public String searchuserbyname(String username,Model model){
		User user = this.UserServiceImpl.searchuserbyname(username);
		model.addAttribute("user", user);  
      return "showuserdata2.jsp";
	}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
}
