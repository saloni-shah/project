package com.project.invitar.resource;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import com.project.invitar.model.Registration;
import com.project.invitar.service.RegistrationService;

@Component
@Path("registrationResourceInterface")
@XmlRootElement
public class RegistrationResource implements RegistrationResourceInterface {

	@Autowired
	private RegistrationService registrationService;

	@GET
	@Path("signup")
	@Produces(MediaType.TEXT_HTML)
	public Response signup() {
		return Response.ok(new Viewable("/signup")).build();
	}

	@POST
	@Path("signup")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_HTML)
	public Response signup(@FormParam("userName") String userName,
			@FormParam("password") String password,
			@FormParam("firstName") String firstName,
			@FormParam("lastName") String lastName,			
			@FormParam("emailAddress") String emailAddress)
			throws ParseException {

		if (userName == null || password == null || firstName == null
				|| lastName == null || emailAddress == null) {
			return Response.status(Status.PRECONDITION_FAILED).build();
		}

		
		
		String generatedPassword=generatePasswordDigest(password);
		Registration reg = new Registration();
		reg.setUserName(userName);
		reg.setPassword(generatedPassword);
		reg.setFirstName(firstName);
		reg.setLastName(lastName);

		
		reg.setEmailAddress(emailAddress);

		if (registrationService.findByUserName(userName)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("message", "User Name exists. Try another user name");
			map.put("registration", reg);
			return Response.status(Status.BAD_REQUEST)
					.entity(new Viewable("/signup", map)).build();
		} else {
			registrationService.save(reg);
			return Response.ok().entity(new Viewable("/login")).build();
		}
	}

	@GET
	@Path("login")
	@Produces(MediaType.TEXT_HTML)
	public Response login() {
		return Response.ok(new Viewable("/login")).build();
	}

	@POST
	@Path("login")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_HTML)
	public Response login(@FormParam("userName") String userName,
			@FormParam("password") String password) {

		if (userName == null || password == null) {
			return Response.status(Status.PRECONDITION_FAILED).build();
		}
		String pass=generatePasswordDigest(password);

		boolean found = registrationService.findByLogin(userName, pass);
		if (found) {
			return Response.ok().entity(new Viewable("/success")).build();
		} else {
			return Response.status(Status.BAD_REQUEST)
					.entity(new Viewable("/failure")).build();
		}
	}
	
	
	public String generatePasswordDigest(String password){
		 String generatedPassword = null;
	        try {
	            // Create MessageDigest instance for MD5
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            //Add password bytes to digest
	            md.update(password.getBytes());
	            //Get the hash's bytes 
	            byte[] bytes = md.digest();
	            //This bytes[] has bytes in decimal format;
	            //Convert it to hexadecimal format
	            StringBuilder sb = new StringBuilder();
	            for(int i=0; i< bytes.length ;i++)
	            {
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            //Get complete hashed password in hex format
	            generatedPassword = sb.toString();
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+generatedPassword);
	        } 
	        catch (NoSuchAlgorithmException e) 
	        {
	            e.printStackTrace();
	        }
	        System.out.println(generatedPassword);
	    return generatedPassword;
	}

}
