package com.project.invitar.service;

import com.project.invitar.model.FbLogin;
import com.project.invitar.model.FbLoginInterface;
import com.project.invitar.model.RegistrationInterface;


public interface FbLoginService {
	FbLoginInterface save(FbLoginInterface fb_login );
	boolean findByfb_Login(String name, String contactEmail);
	boolean findByname(String name);
	boolean findLoginUser();
	
}
