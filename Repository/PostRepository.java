package com.Main.Social_Media_Dashboard.Repository;


import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;

import com.Main.Social_Media_Dashboard.Model.Posts;



public interface PostRepository extends JpaRepository<Posts,Integer> {

	List<Posts> findByUser_Id(Integer id);



	

	
         
}
