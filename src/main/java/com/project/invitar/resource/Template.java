package com.project.invitar.resource;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.xml.bind.annotation.XmlRootElement;

import org.brickred.socialauth.AuthProvider;
import org.brickred.socialauth.Contact;
import org.brickred.socialauth.Profile;
import org.brickred.socialauth.SocialAuthConfig;
import org.brickred.socialauth.SocialAuthManager;
import org.brickred.socialauth.spring.bean.SocialAuthTemplate;
import org.brickred.socialauth.util.SocialAuthUtil;
import org.glassfish.jersey.server.mvc.Viewable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.project.invitar.model.Event;
import com.project.invitar.service.EventService;
import com.project.invitar.service.RegistrationService;

@Component
@Path("TemplateInterface")
@XmlRootElement
public class Template implements TemplateInterface {
	@Autowired
	private EventService eventService;
	@Autowired
	private RegistrationService registrationService;
	@Autowired
	@Qualifier("socialAuthTemplate")
	private SocialAuthTemplate socialAuthTemplate;
	
	@GET
	@Path("getTemplates")
	@Produces(MediaType.TEXT_HTML)
	public Response getTemplates(@Context HttpServletRequest req) {
		//database logic
		String userName = String.valueOf(req.getAttribute("username"));
		//List<Event> events  = (List<Event>)eventService.getEventsOfUser(userName);
		//	Map<String, Object> map = new HashMap<String, Object>();
		//map.put("message", "User Name exists. Try another user name");
		//map.put("event", events);
		return Response.status(Status.OK)
				.entity(new Viewable("/templates", userName)).build();
			
		
//		return Response.ok(new Viewable("/templates")).build();
//		if (!registrationService.findLoginUser()) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("message", "Please login first.");
//			//map.put("registration", reg);
//			return Response.status(Status.BAD_REQUEST)
//					.entity(new Viewable("/login", map)).build();
//		}else{
//			return Response.ok(new Viewable("/templates")).build();
//		}
	}
	@GET
	@Path("getTemplateso")
	@Produces(MediaType.TEXT_HTML)
	public Response getTemplateso(@Context HttpServletRequest req) {
		//database logic
		String userName = String.valueOf(req.getAttribute("username"));
		//List<Event> events  = (List<Event>)eventService.getEventsOfUser(userName);
		//	Map<String, Object> map = new HashMap<String, Object>();
		//map.put("message", "User Name exists. Try another user name");
		//map.put("event", events);
		return Response.status(Status.OK)
				.entity(new Viewable("/occasion", userName)).build();
			
		
//		return Response.ok(new Viewable("/templates")).build();
//		if (!registrationService.findLoginUser()) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("message", "Please login first.");
//			//map.put("registration", reg);
//			return Response.status(Status.BAD_REQUEST)
//					.entity(new Viewable("/login", map)).build();
//		}else{
//			return Response.ok(new Viewable("/templates")).build();
//		}
	}
	
	@GET
	@Path("getTemplatesea")
	@Produces(MediaType.TEXT_HTML)
	public Response getTemplatesea(@Context HttpServletRequest req) {
		//database logic
		String userName = String.valueOf(req.getAttribute("username"));
		//List<Event> events  = (List<Event>)eventService.getEventsOfUser(userName);
		//	Map<String, Object> map = new HashMap<String, Object>();
		//map.put("message", "User Name exists. Try another user name");
		//map.put("event", events);
		return Response.status(Status.OK)
				.entity(new Viewable("/seasonal", userName)).build();
			
		
//		return Response.ok(new Viewable("/templates")).build();
//		if (!registrationService.findLoginUser()) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("message", "Please login first.");
//			//map.put("registration", reg);
//			return Response.status(Status.BAD_REQUEST)
//					.entity(new Viewable("/login", map)).build();
//		}else{
//			return Response.ok(new Viewable("/templates")).build();
//		}
	}
	@GET
	@Path("getTemplatesfun")
	@Produces(MediaType.TEXT_HTML)
	public Response getTemplatesfun(@Context HttpServletRequest req) {
		//database logic
		String userName = String.valueOf(req.getAttribute("username"));
		//List<Event> events  = (List<Event>)eventService.getEventsOfUser(userName);
		//	Map<String, Object> map = new HashMap<String, Object>();
		//map.put("message", "User Name exists. Try another user name");
		//map.put("event", events);
		return Response.status(Status.OK)
				.entity(new Viewable("/fun", userName)).build();
			
		
//		return Response.ok(new Viewable("/templates")).build();
//		if (!registrationService.findLoginUser()) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("message", "Please login first.");
//			//map.put("registration", reg);
//			return Response.status(Status.BAD_REQUEST)
//					.entity(new Viewable("/login", map)).build();
//		}else{
//			return Response.ok(new Viewable("/templates")).build();
//		}
	}
	@GET
	@Path("getMyEvents")
	@Produces(MediaType.TEXT_HTML)
	public Response getMyEvents(@Context HttpServletRequest req) {
		//String userName = String.valueOf(req.getAttribute("username"));
		String userName  = "saloni";
		List<Event> events  = (List<Event>)eventService.getEventsOfUser(userName);
//		Event event = new Event();
//		for (int i = 0; i < events.size(); i++) {
//			event.setEventTitle(events. 3`4       			event.setAddress(events.get(i).getAddress());
//			event.setCity(events.get(i).getCity());
//			event.setLocation(events.get(i).getLocation());
//			event.setState(events.get(i).getState());
//			event.setMessage(events.get(i).getMessage());
//			event.setStartTime(events.get(i).getStartTime());
//		}
			Map<String, Object> map = new HashMap<String, Object>();
			//map.put("message", "User Name exists. Try another user name");
			map.put("events", events);
		
		return Response.status(Status.OK)
				.entity(new Viewable("/myEvents", map)).build();
		
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
	
	@GET
	@Path("getContacts")
	//@Produces(MediaType.TEXT_HTML)
	public Response getContacts () throws Exception{
		SocialAuthManager manager = socialAuthTemplate.getSocialAuthManager();
		AuthProvider provider = manager.getCurrentAuthProvider();
		List<Contact> contactsList = new ArrayList<Contact>();
		contactsList = provider.getContactList();
		if (contactsList != null && contactsList.size() > 0) {
			for (Contact p : contactsList) {
				if (!StringUtils.hasLength(p.getFirstName())
						&& !StringUtils.hasLength(p.getLastName())) {
					p.setFirstName(p.getDisplayName());
				}
			}
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("contacts", contactsList);
		return Response.status(Status.OK)
				.entity(new Viewable("/getContacts",map)).build();
		
		
	}
		
}
