package com.project.invitar.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public interface FbLoginInterface {
	
	public Long getId();
	public void setId(Long id);

	public String getFirstName();
	public void setFirstName(String firstName);
	public String getLastName();
	public void setLastName(String lastName);
	public String getUserName();
	public void setUserName(String userName);

//	public void setNamespace(String namespace);
//	public String getNamespace();

	public String getContactEmail();
	public void setContactEmail(String contactEmail);
	
//	public String getAccess_token();
//	public void setAccess_token(String access_token);
	
}