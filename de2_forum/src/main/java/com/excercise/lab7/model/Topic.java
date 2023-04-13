package com.excercise.lab7.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class Topic extends Entry {
	private Integer id;
	private Stack<Message> messages = new Stack<Message>();
	private Category category;

	public Topic(Integer id, String title, String content, 
	      User creator, Category category) {
		super(title, content, creator);
		this.id = id;
		this.category = category;
	}
	//not usable
	public void setId(Integer id) {
		this.id = id;
	}

	public Topic() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public Category getCategory() {
      return category;
   }

   public void setCategory(Category category) {
      this.category = category;
   }

   public List<Message> getMessages() {
		return messages.subList(0, messages.size());
	}

	public void addMessage(Message message) {
		messages.push(message);
	}

	public Message getNewMessage() {
		return messages.peek();
	}	
}
