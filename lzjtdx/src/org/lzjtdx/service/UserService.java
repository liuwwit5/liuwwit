package org.lzjtdx.service;

import org.lzjtdx.dao.UserDao;
import org.lzjtdx.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	UserDao userDao;
	
	public void addUser(User u){
		userDao.add(u);
	}
}
