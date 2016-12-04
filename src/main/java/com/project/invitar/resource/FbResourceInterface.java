package com.project.invitar.resource;

import java.text.ParseException;

import javax.ws.rs.core.Response;

public interface FbResourceInterface {

//	public Response signup();
//
//	public Response signup(String userName, String password, String firstName,
//			String lastName,String emailAddress)
//			throws ParseException;

	public Response Fb_login();

	public Response Fb_login(String name, String contactEmail);
	
}