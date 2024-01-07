package com.note.entity;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "notes")
public class Notes {
	
	@Id
	private int id;
	private String title;
	@Column(length = 1500)
	private String noteContent;
	private Date date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNoteContent() {
		return noteContent;
	}
	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	public Notes(int id, String title, String noteContent, Date date) {
		super();
		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.noteContent = noteContent;
		this.date = date;
	}
	
	
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
