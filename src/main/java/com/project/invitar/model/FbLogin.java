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
@XmlRootElement(name="fb_login")
@Entity
@Table(name="fb_login")
public class FbLogin {
	
	@Id
	@GeneratedValue
	private long id;
	private String name;
	private String namespace;
	    
	 @JsonProperty("contact_email")
	 private String contactEmail;
	 @JsonProperty("access_token")
	 private String access_token;
	
	
	
	public long getId() {
	        return id;
	    }
	public void setId(long id){
		this.id = id;
	}
	
	public String getName() {
        return name;
    }
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContactEmail() {
	        return contactEmail;
	    }
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	
	public void setNamespace(String namespace) {
       this.namespace = namespace;
    }

    public String getNamespace() {
        return namespace;
    }
    
    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    }
    public String getAccess_token() {
        return access_token;
    }
	
	
	
	
	
	
	
}