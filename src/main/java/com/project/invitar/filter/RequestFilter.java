package com.project.invitar.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.glassfish.jersey.server.mvc.Viewable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import com.project.invitar.service.RegistrationService;

public class RequestFilter implements Filter {

	@Autowired
	private RegistrationService registrationService;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
//		HttpServletRequest httpReq = (HttpServletRequest) req;
//		
//		boolean isUserNamePresent = false;
//		String cookieUsername = "";
//		// System.out.println();System.out.println();System.out.println();
//		for (Cookie c : httpReq.getCookies()) {
//			System.out.println("Cookie Name:" + c.getName());
//			System.out.println("Cookie Value:" + c.getValue());
//			if (c.getName().equals("username")) {
//				cookieUsername = c.getValue();
//				System.out.println("Cookie username is present");
//				isUserNamePresent = true;
//				if(!registrationService.checkUserActive(c.getValue())) {
//					System.out.println("User "+c.getValue()+" is not active");
//					HttpServletResponse httpResponse = (HttpServletResponse) res;
//					httpResponse.sendRedirect("/Invitar/webapi/registrationResourceInterface/login");
//					return;
//				}
//				break;
//			}
//				
//			} 
//		if(!isUserNamePresent) {
//			System.out.println("Cookie username is not present");
//			HttpServletResponse httpResponse = (HttpServletResponse) res;
//			httpResponse.sendRedirect("/Invitar/webapi/registrationResourceInterface/login");
//			return;
//		}
//		req.setAttribute("username", cookieUsername);
		chain.doFilter(req, res);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
