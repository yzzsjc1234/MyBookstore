package com.bookstore.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.bookstore.domain.User;
import com.bookstore.util.C3P0Util;

public class UserDao {
   //添加用户
	public void addUser(User user) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		String sql = "INSERT INTO USER (username,PASSWORD,gender,email,telephone,introduce,activeCode,state,registTime) " +
				     "VALUE(?,?,?,?,?,?,?,?,?)";
	    qr.update(sql, user.getUsername(),user.getPassword(),user.getGender(),user.getEmail(),user.getTelephone(),user.getIntroduce(),user.getActiveCode(),user.getState(),user.getRegistTime());
	}
	//根据激活码查找用户
	public User findUserByActiveCode(String activeCode) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("SELECT * FROM USER WHERE activeCode=?", new BeanHandler<User>(User.class),activeCode);
	}
	
	//修改激活状态
	public void activeCode(String activeCode) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("UPDATE USER SET state=1 WHERE activeCode=?",activeCode);
		
	}
	//通过用户名和密码找到用户
	public User findUserByNameAndPassword(String username, String password) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("SELECT * FROM USER WHERE username=? and password=?", new BeanHandler<User>(User.class),username,password);
	}
	//通过id找到用户
	public User findUserById(String id) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("SELECT * FROM USER WHERE id=?", new BeanHandler<User>(User.class),id);
	}
	//修改用户信息
	public void modifyUser(User user) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("UPDATE USER SET password=?,gender=?,telephone=? WHERE id=?",user.getPassword(),user.getGender(),user.getTelephone(),user.getId());
	}
	//通过邮箱找到用户
	public User findUserByEmail(String email) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("SELECT * FROM USER WHERE email=?", new BeanHandler<User>(User.class),email);
	}
	
	

}
