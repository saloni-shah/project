package com.project.invitar.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonProperty;

@Component
@XmlRootElement(name="FbLogin")
@Entity
@Table(name="fb_login")
public class FbLogin {
	
	@Id
	@GeneratedValue
	private long id;
	private String firstName;
	private String lastName;
//	private String namespace;
	private String userName;
	    
	 @JsonProperty("contact_email")
	 private String contactEmail;
//	 @JsonProperty("access_token")
//	 private String access_token;
	
	
	
	public long getId() {
	        return id;
	    }
	public void setId(long id){
		this.id = id;
	}
	
	public String getFirstName() {
        return firstName;
    }
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
        return lastName;
    }
	public void setLastName(String lastName) {
		this.lastName = lastName;
		}
	
	
	public String getContactEmail() {
	        return contactEmail;
	    }
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	
	public void setUserName(String userName) {
       this.userName = userName;
    }
	public String getUserName(){
		return userName;
	}

//    public String getNamespace() {
//        return namespace;
//    }
    
//    public void setAccess_token(String access_token) {
//        this.access_token = access_token;
//    }
//    public String getAccess_token() {
//        return access_token;
//    }
	
	
	
	
	
	
	
}