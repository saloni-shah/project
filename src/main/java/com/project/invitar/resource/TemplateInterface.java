package com.project.invitar.resource;

import java.text.ParseException;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Response;

public interface TemplateInterface {
	public Response getTemplates(HttpServletRequest req);
	public Response getTemplateDetail();
	public Response getMyEvents(HttpServletRequest req);
	public Response saveEvent(String eventTitle, String eventType, String eventHost,
			String location, String address, String city, String state,String startTime,String message)
			throws ParseException;
}
