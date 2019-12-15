package vss.springsecurity.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vss.springsecurity.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    User findBySsoId(String sso);
}
