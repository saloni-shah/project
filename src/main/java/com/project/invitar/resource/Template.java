package com.project.invitar.resource;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.xml.bind.annotation.XmlRootElement;

import org.glassfish.jersey.server.mvc.Viewable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.invitar.model.Event;
import com.project.invitar.model.Registration;
import com.project.invitar.service.EventService;
import com.project.invitar.service.RegistrationService;

@Component
@Path("TemplateInterface")
@XmlRootElement
public class Template implements TemplateInterface {
	@Autowired
	private EventService eventService;

	@GET
	@Path("getTemplates")
	@Produces(MediaType.TEXT_HTML)
	public Response getTemplates() {
		return Response.ok(new Viewable("/templates")).build();
	}

	@GET
	@Path("getTemplateDetail")
	@Produces(MediaType.TEXT_HTML)
	public Response getTemplateDetail() {
		return Response.ok(new Viewable("/templateDetail")).build();
	}


	@POST
	@Path("saveEvent")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_HTML)
	public Response saveEvent(@FormParam("eventTitle") String eventTitle,
			@FormParam("eventType") String eventType,
			@FormParam("eventHost") String eventHost,
			@FormParam("location") String location,
			@FormParam("address") String address,
			@FormParam("city") String city,
			@FormParam("state") String state,
			@FormParam("startTime") String startTime,
			@FormParam("message") String message) throws ParseException {
		// TODO Auto-generated method stub
		if (eventTitle == null || eventType == null || eventHost == null
				|| startTime == null || location == null || message == null) {
			return Response.status(Status.PRECONDITION_FAILED).build();
		}

		Event event = new Event();
		event.setEventTitle(eventTitle);
		event.setEventType(eventType);
		event.setEventHost(eventHost);
		event.setLocation(location);
		event.setAddress(address);
		event.setCity(city);
		event.setState(state);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		Date date = formatter.parse(startTime);
        //System.out.println(date);
        //System.out.println(formatter.format(date));
		
        
		event.setStartTime(date);
		event.setMessage(message);
		
		eventService.save((Event)event);
		//return Response.ok().entity(new Viewable("/login")).build();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", "Event created successfully..");
		return Response.status(Status.CREATED)
				.entity(new Viewable("/templates", map)).build();
	}
		
}
