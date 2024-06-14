package com.Main.Social_Media_Dashboard.Repository;



import org.springframework.data.jpa.repository.JpaRepository;
import com.Main.Social_Media_Dashboard.Model.Users;

public interface UsersRepository extends JpaRepository<Users,Integer>{

	Users findByEmail(String email);

	Users findAllById(int id);

	

//	Users findByEmail(String Email);
	

}
