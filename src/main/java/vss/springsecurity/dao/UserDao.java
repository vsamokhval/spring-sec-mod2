package vss.springsecurity.dao;

import vss.springsecurity.model.User;

public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
}

