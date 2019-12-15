package vss.springsecurity.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vss.springsecurity.model.User;
import vss.springsecurity.repositories.UserRepository;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository repository;
	@Autowired
	private PasswordEncoder passwordEncoder;

	public User findById(int id) {
		return repository.findById(id).orElse(null);
	}

	public User findBySso(String sso) {
		return repository.findBySsoId(sso);
	}

	@Override
	public User saveUser(User user) {
		String encodedPass = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPass);
		return repository.save(user);
	}

}
