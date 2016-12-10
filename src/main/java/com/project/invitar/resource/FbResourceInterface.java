package com.project.invitar.resource;

import java.text.ParseException;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Response;



public interface FbResourceInterface {

//	public Response getFbResource(HttpServletRequest req);
//	public Response getFb_login(HttpServletRequest req);
	public Response Fb_login() throws Exception;
	public Response saveFb_login(String FirstName, String LastName, String contactEmail) throws ParseException;
}

