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
import javax.servlet.http.HttpSession;
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
import com.project.invitar.service.Mail;
import com.project.invitar.service.Mailer;
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


	@Autowired
	private Mailer mailer;
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
	@Path("getMyEvents")
	@Produces(MediaType.TEXT_HTML)
	public Response getMyEvents(@Context HttpServletRequest req) {
		//String userName = String.valueOf(req.getAttribute("username"));
		String userName  = "asha";
		List<Event> events  = (List<Event>)eventService.getEventsOfUser(userName);
//		Event event = new Event();
//		for (int i = 0; i < events.size(); i++) {
//			event.setEventTitle(events.get(i).getEventTitle());
//			event.setEventType(events.get(i).getEventType());
//			event.setEventHost(events.get(i).getEventHost());
//			event.setAddress(events.get(i).getAddress());
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
			@FormParam("message") String message,@Context HttpServletRequest request) throws ParseException {
		// TODO Auto-generated method stub
		if (eventTitle == null || eventType == null || eventHost == null
				|| startTime == null || location == null || message == null) {
			return Response.status(Status.PRECONDITION_FAILED).build();
		}

		 HttpSession session = request.getSession();
		 session.setAttribute("location", location);
		 session.setAttribute("eventHost", eventHost);
		 session.setAttribute("startTime", startTime);
		 session.setAttribute("eventType", eventType);
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
				.entity(new Viewable("/send", map)).build();
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
	//code to send invitation 
	//author asha
	@POST
	@Path("send")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_HTML)
	public Response sendEvent(@FormParam("mailId") String mailId, @Context HttpServletRequest request			
			) throws ParseException {
		 HttpSession session = request.getSession();
		String location=(String) session.getAttribute("location");
		System.out.println("locationnnnnnnnnnnnnnnnnn>>>>>>>>>>>>>>>>>>>>>>>>>>.."+location);
		String host=(String) session.getAttribute("eventHost");
		String startTime=(String) session.getAttribute("startTime");
		String eventType=(String) session.getAttribute("eventType");
		System.out.println("host>>>>>>>>>>>>>>>>>>>>>>>>>>.."+host);
		System.out.println("startTime>>>>>>>>>>>>>>>>>>>>>>>>>>.."+startTime);
		System.out.println("eventType>>>>>>>>>>>>>>>>>>>>>>>>>>.."+eventType);
		// TODO Auto-generated method stub
		if (mailId == null) {
			return Response.status(Status.PRECONDITION_FAILED).build();
		}
	      Mail mail=new  Mail();
	      System.out.println("mailid>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+mailId);
	      mail.setMailFrom("ashasn@gmail.com");
	      mail.setMailTo(mailId);
	      mail.setMailSubject("InVittaion");
	      mail.setTemplateName("invitar.vm");
	   mail.setLocation(location);
	   mail.setHost(host);
	   mail.setEvent(eventType);
	   mail.setWhen(startTime);
	   
	  
	      try {
			mailer.sendMail(mail);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", "Invitation Send Successfully..");
		return Response.status(Status.CREATED)
				.entity(new Viewable("/send", map)).build();
	}
		
		
}
