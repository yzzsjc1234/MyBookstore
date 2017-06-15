package com.bookstore.service;

import java.sql.SQLException;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.User;
import com.bookstore.exception.UserException;
import com.bookstore.util.SendJMail;

public class UserService {
	UserDao ud = new UserDao();
	public void register(User user) throws UserException {
		try {
			ud.addUser(user);
			String emailMsg = "注册成功，请<a href='http://localhost:8080/myBookstore/activeServlet?activeCode="+user.getActiveCode()+"'>激活</a>用户";
			SendJMail.sendMail(user.getEmail(), emailMsg);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("注册失败!");
		}
		
	}
	public void activeUser(String activeCode) throws UserException {
		//根据激活玛找到用户
		try {
			User user = ud.findUserByActiveCode(activeCode);
			//如果找到则激活用户
			if(user != null){
				ud.activeCode(activeCode);
				return;
			}
			throw new UserException("激活失败！");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("激活失败！");
		}	
	}
	public User login(String username, String password) throws UserException {
		User user = null;
		try {
			 user = ud.findUserByNameAndPassword(username,password);
			 if(user==null){
				 throw new UserException("用户名或密码错误！");
			 }
			 if(user.getState()==0){
				 throw new UserException("用户未激活！");
			 }
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("登录失败！");
		}
		
		return user;
	}
	public User findUserById(String id) throws UserException {
		try {
			return ud.findUserById(id);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("用户查找失败！");
		}
	}
	
	public void modifyUser(User user) throws UserException {
		try {
			ud.modifyUser(user);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("修改用户信息失败！");
		}
	}
	public User findUserByEmail(String email) throws UserException {
		try {
			return ud.findUserByEmail(email);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new UserException("用户查找失败！");
		}
	}
	

}
