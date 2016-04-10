package org.lzjtdx.dao;

import org.hibernate.SessionFactory;
import org.lzjtdx.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void add(User u){
		sessionFactory.getCurrentSession().save(u);
	}

}
