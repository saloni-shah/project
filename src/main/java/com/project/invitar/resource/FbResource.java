//package com.project.invitar.resource;
//
//import java.security.MessageDigest;
//import java.security.NoSuchAlgorithmException;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.ws.rs.Consumes;
//import javax.ws.rs.FormParam;
//import javax.ws.rs.GET;
//import javax.ws.rs.POST;
//import javax.ws.rs.Path;
//import javax.ws.rs.Produces;
//import javax.ws.rs.core.MediaType;
//import javax.ws.rs.core.NewCookie;
//import javax.ws.rs.core.Response;
//import javax.ws.rs.core.Response.Status;
//import javax.xml.bind.annotation.XmlRootElement;
//import javax.ws.rs.core.*;
//
//import org.brickred.socialauth.AuthProvider;
//import org.brickred.socialauth.Contact;
//import org.brickred.socialauth.Profile;
//import org.brickred.socialauth.SocialAuthManager;
//import org.brickred.socialauth.util.AccessGrant;
//import org.brickred.socialauth.util.SocialAuthUtil;
//import org.brickred.socialauth.spring.bean.SocialAuthTemplate;
//import org.glassfish.jersey.server.mvc.Viewable;
//import org.hibernate.mapping.List;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Component;
//import org.springframework.util.StringUtils;
////import org.springframework.social.facebook.api.Facebook;
//
//import com.project.invitar.model.FbLogin;
//import com.project.invitar.resource.FbResource.RequestMapping;
//import com.project.invitar.service.FbLoginService;
//import com.project.invitar.service.FbLoginServicImpl;
//
//@Component
//@Path("FbResourceInterface")
//@XmlRootElement
//@RequestMapping
//
//
//public class FbResource implements FbResourceInterface {
//	public @interface RequestMapping {
//
//	}
//
//	@Autowired
//	@Qualifier("socialAuthTemplate")
//	public SocialAuthTemplate socialAuthTemplate;
//
//
//	@GET
//	@Path("Fb_Login")
//	@Produces(MediaType.TEXT_HTML)
//	public Response Fb_login(String userName, String contactEmail) throws Exception{
//		SocialAuthManager manager = socialAuthTemplate.getSocialAuthManager();
//		
//		//pull user's data from providers(facebook)
//		AuthProvider provider = manager.getCurrentAuthProvider();
//		AccessGrant p = provider.getAccessGrant();
//		//Profile pr = provider.getUserProfile();
//		
//		java.util.List<Profile> userProfileList =new ArrayList<Profile>();
//		try {
//			userProfileList = (java.util.List<Profile>) provider.getUserProfile();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		if (userProfileList != null && userProfileList.size() > 0) {
//			for (Profile a : userProfileList) {
//				if (!StringUtils.hasLength(a.getFirstName())
//						&& !StringUtils.hasLength(a.getLastName()) && !StringUtils.hasLength(a.getEmail())) {
//					a.setFirstName(a.getFirstName());
//				}
//			}
//		}
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("profile", userProfileList);
//		return Response.status(Status.OK)
//				.entity(new Viewable("/Fb_login")).build();
//	}
////		return Response.ok(new Viewable("/Fb_login",map)).build();
////		map.put("Fb_login", Fb_login());
////		return Response.status(Status.OK)
////				.entity(new Viewable("/getFb_login",map)).build();
////		//return Response.ok(new Viewable("/Fb_login",map)).build();
////	}
////	@Override
////	public Response getFbResource(HttpServletRequest req) {
////		// TODO Auto-generated method stub
////		return null;
////	}
////	@Override
////	public Response getFb_login(HttpServletRequest req) {
////		// TODO Auto-generated method stub
////		return null;
////	}
//	public Response saveFb_login(String FirstName,String LastName, String contactEmail) throws ParseException {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	@Override
//	public Response Fb_login() throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
//	
//	
//	}