package com.Service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.UserMapper;
import com.po.Blog;
import com.po.BlogExample;
import com.po.User;
import com.po.UserExample;
import com.dao.BlogMapper;
@Service("UserServiceImpl")
public class UserServiceImpl implements UserService  {
	@Autowired
	private UserMapper UserMapper;
	
	/* (non-Javadoc)
	 * @see com.Service.UserService#selectalluser()
	 */
	@Override
	public List<User> selectallUser() {
		UserExample userexample = new UserExample();
		UserExample.Criteria userCriteria=userexample.createCriteria();
		userCriteria.andUserIdIsNotNull();
		return this.UserMapper.selectByExample(userexample);
	}
	/* (non-Javadoc)
	 * @see com.Service.UserService#selectByid(int)
	 */
	@Override
	public User selectuserByid(int userId){
		return this.UserMapper.selectByPrimaryKey(userId);
	}

	/* (non-Javadoc)
	 * @see com.Service.UserService#updatauser(com.po.User)
	 */
	@Override
	public void updatauser(User record) {
		this.UserMapper.updateByPrimaryKey(record);
	}
	
	/* (non-Javadoc)
	 * @see com.Service.UserService#insertuser(com.po.User)
	 */
	@Override
	public void insertuser(User user,int userId) {
		this.UserMapper.deleteByPrimaryKey(userId);
	}
	
	/* (non-Javadoc)
	 * @see com.Service.UserService#delcategory(int)
	 */
	@Override
	public void deluser(int userId) {
		this.UserMapper.deleteByPrimaryKey(userId);
	}
	public void insertusernotbyid(User user){
		this.UserMapper.insertusernotbyid(user);
	}
	public String login(String userName,String userPwd,String aa){
		UserExample userexample = new UserExample();
		UserExample.Criteria
		userCriteria=userexample.createCriteria();
		userCriteria.andUserNameEqualTo(userName);
		List<User> users = this.UserMapper.selectByExample(userexample);
		if(users.size() != 0){
			User user = this.UserMapper.selectByExample(userexample).get(0);
			int userid = user.getUserId();
			String userId=String.valueOf(userid);
			String pwd = user.getUserPwd();
			if(pwd.equals(userPwd)){
				return userId;
			}else {
				aa="100";
				return aa ;
			}
		}else{
			aa="300";
			return aa;
		}
	}
	public void modifyuserpwdbyname(User user){
		User user1 = user;
		this.UserMapper.modifyuserpwdbyname(user1);
	}
	@Override
	public User searchuserbyname(String username) {
		UserExample userexample = new UserExample();
		UserExample.Criteria userCriteria=userexample.createCriteria();
		userCriteria.andUserNameEqualTo(username);
		return this.UserMapper.selectByExample(userexample).get(0);
		//return this.UserMapper.selectByExample(userexample).get(0);
	}
}
