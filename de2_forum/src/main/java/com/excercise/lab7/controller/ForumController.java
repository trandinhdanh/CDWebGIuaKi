package com.excercise.lab7.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.excercise.lab7.model.Category;
import com.excercise.lab7.model.Message;
import com.excercise.lab7.model.Topic;
import com.excercise.lab7.model.User;
import com.excercise.lab7.service.ForumService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("userLogin")
public class ForumController {
	@Autowired
	ForumService forumService;

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@PostMapping("/login")
	public String login(User user, Errors Errors, Model model) {
		User userSuccess = forumService.checkUser(user.getUsername(), user.getPassword());
		if (userSuccess == null) {
			model.addAttribute("error", "login failed");
			return "login";
		}
		model.addAttribute("userLogin", userSuccess);
		return "redirect:/listTopic";
	}

	@GetMapping("/listTopic")
	public String listTopic(Model model) {
		Collection<Topic> topic1 = forumService.getTopics();
		model.addAttribute("topics", topic1);
		return "listTopic";
	}

	@GetMapping("/showTopic")
	public String showTopic(@RequestParam int id, Model model) {
		System.out.println("id receive: " + id);
		System.out.println(forumService.findTopic(id));
		model.addAttribute("topic", forumService.findTopic(id));

		return "showTopic";
	}

	@GetMapping("/replyTopic")
	public String replyTopicPage(@RequestParam int id, Model model, HttpSession session) {
		model.addAttribute("message", new Message());
		model.addAttribute("id", id);
		return "replyTopic";
	}

	@PostMapping("/replyTopic")
	public String replyTopic(@RequestParam int id,Message message, Model model, HttpSession session) {

		Topic topic = forumService.findTopic(id);

		// set user.
		User user = (User) session.getAttribute("userLogin");
		message.setCreator(user);
		// find topic
		topic.addMessage(message);
		return "redirect:/showTopic?id="+id;
	}

	@GetMapping("/newTopic")
	public String newTopicpage(Model model) {
		model.addAttribute("topic", new Topic());
		return "newTopic";
	}

	@PostMapping("/newTopic")
	public String newTopic(Topic topic, Model model, HttpSession session) {
		// get category
		final Category c;
		List<Topic> t = new ArrayList<>(forumService.getTopics());
		c = t.get(0).getCategory();
		topic.setCategory(c);
		// set user.

		User user = (User) session.getAttribute("userLogin");
		topic.setCreator(user);
		// add topic
		forumService.addTopic(topic);

		return "redirect:/listTopic";
	}
}
