package com.Main.Social_Media_Dashboard.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Main.Social_Media_Dashboard.Model.Posts;
import com.Main.Social_Media_Dashboard.Model.Users;
import com.Main.Social_Media_Dashboard.Repository.PostRepository;
import com.Main.Social_Media_Dashboard.Repository.UsersRepository;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
public class PostController {

	// post Repository
	@Autowired
	PostRepository pr;
	@Autowired
	UsersRepository ur;

	@RequestMapping("/addnewpost/{id}")
	public String addnewpost(@PathVariable int id, Model m) {
		Users user = ur.getById(id);

		m.addAttribute("post", user);
		return "PostPic";
	}

	@RequestMapping("/newpost/{id}")
	public String uploadImage(@PathVariable int id, @RequestParam("caption") String caption,
			@RequestParam("file") MultipartFile file) throws IOException {

		Users user = ur.findById(id).orElse(null);
		Posts ps = new Posts();
		if (ps != null) {
			byte[] imageData = file.getBytes();
			ps.setUser(user);
			ps.setcaption(caption);
			ps.setImage(imageData);
			pr.save(ps);
		}

		return "redirect:/";
	}

	@RequestMapping("/getuserprofile12")
	public String getPage(Model model) {
		List<Posts> posts = pr.findAll();
		model.addAttribute("posts", posts);
		return "UserHomePage";
	}

	@RequestMapping("ViewAllDetails/{id}")
	public String getInDetails(@PathVariable int id, Model m) {
		List<Posts> post1 = pr.findByUser_Id(id);
		// Posts ps=pr.getById(id);
		if (post1 != null) {
			m.addAttribute("post", post1);
		}
		return "ViewAllDetails";
	}

	// GetAll Data methd image and other attributes

	@RequestMapping("/allPosts")
	public String getAllPosts(Model model) {
		List<Posts> allPosts = pr.findAll();
		model.addAttribute("allPosts", allPosts);

		// Convert byte arrays to base64 strings for display
		for (Posts post : allPosts) {
			if (post.getImage() != null) {
				// post.setImage(Base64.getEncoder().encodeToString(post.getImage()));
			}
		}

		return "dummy";
	}

	static int like = 0;
	static int dislike = 0;

	@RequestMapping("/personal_hit_like/{postId}/{userId}")
	public String hitlike(@PathVariable("postId") int postId, @PathVariable("userId") int userId,
			RedirectAttributes redirectAttributes) {

		Posts post = pr.getById(postId);
		int l = post.getLikes();
		like = l;
		int dl = post.getDislikes();
		dislike = dl;

		like++;
		post.setLikes(like);
		System.out.println(dislike);
		if (dislike > 0) {
			dislike--;
			post.setDislikes(dislike);
		}

		pr.save(post);

		// sending user Id
		List<Posts> userPosts = pr.findByUser_Id(userId);

		System.out.println("User associated with the post: " + post.getUser());
		System.out.println("Posts by user: " + userPosts);

		return "redirect:/getuserprofile" + userId;
	}

	@RequestMapping("/personal_hit_dislike/{postId}/{userId}")
	public String hitdislike(@PathVariable("postId") int postId, @PathVariable("userId") int userId,
			RedirectAttributes redirectAttributes) {
		Posts post = pr.getById(postId);

		int l = post.getLikes();
		like = l;
		int dl = post.getDislikes();
		dislike = dl;
		int dislikes = post.getDislikes();

		dislikes++;

		post.setDislikes(dislikes);

		int likes = post.getLikes();
		if (likes > 0) {
			likes--;
			post.setLikes(likes);
		}

		System.out.println("Dislikes: " + dislikes);
		System.out.println("Likes: " + likes);
		pr.save(post);

		List<Posts> userPosts = pr.findByUser_Id(userId);

		System.out.println("User associated with the post: " + post.getUser());
		System.out.println("Posts by user: " + userPosts);

		return "redirect:/getuserprofile" + userId;
	}

	// ALl user hit like and dislike

	@RequestMapping("/All_hit_like/{postId}/{userId}/{mainId}")
	public String all_hitlike(@PathVariable("postId") int postId, @PathVariable("userId") int userId,
			@PathVariable("mainId") int mainuserId, RedirectAttributes redirectAttributes) {

		Posts post = pr.getById(postId);
		int l = post.getLikes();
		like = l;
		int dl = post.getDislikes();
		dislike = dl;

		like++;
		post.setLikes(like);
		System.out.println(dislike);
		if (dislike > 0) {
			dislike--;
			post.setDislikes(dislike);
		}

		pr.save(post);

		// sending user Id
		List<Posts> userPosts = pr.findByUser_Id(userId);

		System.out.println("User associated with the post: " + post.getUser());
		System.out.println("Posts by user: " + userPosts);

		return "redirect:/getUserMain" + mainuserId;
	}

	@RequestMapping("/All_hit_Dislike/{postId}/{userId}/{mainId}")
	public String all_HitDislike(@PathVariable("postId") int postId, @PathVariable("userId") int userId,
			@PathVariable("mainId") int mainuserId, RedirectAttributes redirectAttributes) {

		Posts post = pr.getById(postId);

		int l = post.getLikes();
		like = l;
		int dl = post.getDislikes();
		dislike = dl;
		int dislikes = post.getDislikes();

		dislikes++;

		post.setDislikes(dislikes);

		int likes = post.getLikes();
		if (likes > 0) {
			likes--;
			post.setLikes(likes);
		}

		System.out.println("Dislikes: " + dislikes);
		System.out.println("Likes: " + likes);
		pr.save(post);

		List<Posts> userPosts = pr.findByUser_Id(userId);

		System.out.println("User associated with the post: " + post.getUser());
		System.out.println("Posts by user: " + userPosts);

		return "redirect:/getUserMain" + mainuserId;
	}

	@RequestMapping("/getUserMain{id}")
	public String getmainpage(@PathVariable int id, Model m, Model m1, Model m2) {

		Users us2 = ur.findAllById(id);

		List<Users> us3 = ur.findAll();
		// Print filtered users for debugging
		System.out.println("Filtered Users:");
		us3.forEach(user -> System.out
				.println(user.getId() + " - " + user.getEmail() + " - " + user.getusername() + " - " + user.getAge()));

		System.out.println("user id" + id);
		List<Users> filteredUsers = us3.stream().filter(user -> !(user.getId() == id)).collect(Collectors.toList());

		System.out.println("Filtered Usersss:");
		filteredUsers.forEach(user -> System.out
				.println(user.getId() + " - " + user.getEmail() + " - " + user.getusername() + " - " + user.getAge()));

		List<Posts> ps = pr.findAll();
		List<Posts> filteredPosts = ps.stream().filter(pst -> !(pst.getUserId() == id)).collect(Collectors.toList());

		System.out.println("filteresd posts:");
		filteredPosts.forEach(pe -> System.out
				.println(pe.getUserId() + "---" + pe.getLikes() + "---" + pe.getId() + "---" + pe.getDislikes()));

		m.addAttribute("data", us2);

		m1.addAttribute("SeletedUser", filteredUsers);
		m2.addAttribute("SeletedPost", filteredPosts);

		return "UserHomePage1";
	}
}
