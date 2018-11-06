package com.Service;

import java.util.List;

import com.po.Blog;
import com.po.User;

public interface UserService {

	List<User> selectallUser();

	User selectuserByid(int userId);

	void updatauser(User user);

	void insertuser(User user,int userId);

	void deluser(int userId);
	User searchuserbyname(String userName);
}