package com.Main.Social_Media_Dashboard.Controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Main.Social_Media_Dashboard.Model.Posts;
import com.Main.Social_Media_Dashboard.Model.Users;
import com.Main.Social_Media_Dashboard.Repository.PostRepository;
import com.Main.Social_Media_Dashboard.Repository.UsersRepository;

@Controller
public class UserController {

	@Autowired
	private UsersRepository ur;
	@Autowired
	private PostRepository pr;

	@GetMapping("/")
	public String HomeMain() {
		return "index";
	}

	@GetMapping("/signup")
	public String SignUp() {
		return "SignUp_Page";
	}

	@RequestMapping("/SignUp_Details")
	public String SignUpDetails(@ModelAttribute Users us) {
		System.out.println("-------------------");
		System.out.println(us);
		System.out.println(us.getAge());
		System.out.println(us.getusername());
		ur.save(us);
		return "SignInPage";
	}

	@RequestMapping("/SignIn")
	public String SignInPage(@RequestParam String email, String password, Model m, Model m1, Model m2) {
		Users us2 = ur.findByEmail(email);

		if (us2.getEmail().equalsIgnoreCase(email) && us2.getPassword().equals(password)) {

			List<Users> us3 = ur.findAll();
			// Print filtered users for debugging
			System.out.println("Filtered Users:");
			us3.forEach(user -> System.out.println(
					user.getId() + " - " + user.getEmail() + " - " + user.getusername() + " - " + user.getAge()));

			int id = us2.getId();
			System.out.println("user id" + id);
			List<Users> filteredUsers = us3.stream().filter(user -> !(user.getId() == id)).collect(Collectors.toList());

			System.out.println("Filtered Usersss:");
			filteredUsers.forEach(user -> System.out.println(
					user.getId() + " - " + user.getEmail() + " - " + user.getusername() + " - " + user.getAge()));

			List<Posts> ps = pr.findAll();
			List<Posts> filteredPosts = ps.stream().filter(pst -> !(pst.getUserId() == id))
					.collect(Collectors.toList());

			System.out.println("filteresd posts:");
			filteredPosts.forEach(pe -> System.out
					.println(pe.getUserId() + "---" + pe.getLikes() + "---" + pe.getId() + "---" + pe.getDislikes()));

			m.addAttribute("data", us2);
			m1.addAttribute("SeletedUser", filteredUsers);
			m2.addAttribute("SeletedPost", filteredPosts);

			return "UserHomePage1";
		} else {
			return "index";
		}

	}

	@RequestMapping("/getuserprofile{id}")
	public String getUserProfilePage(@PathVariable("id") Integer id, Model model1, Model model2, Model model_all_data) {

		Users user = ur.findById(id).orElse(null);
		// Posts post = pr.findByUser_Id(id).orElse(null);

		model1.addAttribute("data", user);
//       model2.addAttribute("posts", post);

		System.out.println(user);
		// System.out.println(post);

		// FOr get all post details

		// List<Posts> allpost = pr.findAll();
		List<Posts> post1 = pr.findByUser_Id(id);
		model_all_data.addAttribute("allpost", post1);
		System.out.println(post1);
		return "Profile";
	}

	@RequestMapping("/editdetails/{id}")
	public String editDetails(@PathVariable int id, Model m) {
		Users us2 = ur.findById(id).orElse(null);

		m.addAttribute("data", us2);

		return "EditUserProfile";
	}

	@RequestMapping("edit/{id}")
	public String reEnterDetails(@PathVariable int id, @ModelAttribute("user") Users us, Model model) {
		Users us2 = ur.findById(id).orElse(null);

		if (us2 != null) {
			us2.setusername(us.getusername());
			us2.setPassword(us.getPassword());
			us2.setbio(us.getbio());
			ur.save(us2);
			System.out.println(us2.getusername());
		}
		return "redirect:/";
	}

}
