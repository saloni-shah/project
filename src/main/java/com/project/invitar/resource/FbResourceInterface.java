package com.project.invitar.resource;

import java.text.ParseException;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Response;



public interface FbResourceInterface {

//	public Response signup();
//
//	public Response signup(String userName, String password, String firstName,
//			String lastName,String emailAddress)
//			throws ParseException;

	public Response getFbResource(HttpServletRequest req);
	public Response getFb_Login(HttpServletRequest req);
	public Response Fb_Login() throws Exception;
	public Response saveFb_Login(String userName, String contactEmail)throws ParseException;
	public Response Fb_Login(String userName, String contactEmail) throws Exception;
	
}

