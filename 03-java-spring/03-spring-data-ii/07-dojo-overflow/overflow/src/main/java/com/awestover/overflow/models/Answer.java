package com.awestover.overflow.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;


//
@Entity
@Table(name="answers")
public class Answer {
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	@Column
	@NotBlank (message = "Field cannot be empty")
	 private String answerText;
	 @Column(updatable=false)
	 private Date createdAt;
	 @Column
	 private Date updatedAt;
	 @ManyToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name="question_id")
	 private Question question;
	 
	 public Answer() {
	     
	 }
	 public Answer(String answerText) {
		 this.answerText = answerText;
	 }
	 
	// getters and setters
	 public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getanswerText() {
			return answerText;
		}

		public void setanswerText(String answerText) {
			this.answerText = answerText;
		}
		public Question getQuestion() {
			return question;
		}
		public void setQuestion(Question question) {
			this.question = question;
		}
		public Date getCreatedAt() {
	 		return createdAt;
	 	}

	 	public void setCreatedAt(Date createdAt) {
	 		this.createdAt = createdAt;
	 	}

	 	public Date getUpdatedAt() {
	 		return updatedAt;
	 	}

	 	public void setUpdatedAt(Date updatedAt) {
	 		this.updatedAt = updatedAt;
	 	}
		 //
	    @PrePersist
	    protected void onCreate(){
	        this.createdAt = new Date();
	    }
	    @PreUpdate
	    protected void onUpdate(){
	        this.updatedAt = new Date();
	    }

}