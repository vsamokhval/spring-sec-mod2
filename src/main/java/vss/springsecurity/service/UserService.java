package vss.springsecurity.service;

import vss.springsecurity.model.User;

public interface UserService {

	User findById(int id);
	
	User findBySso(String sso);

	User saveUser(User user);
	
}