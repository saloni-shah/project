package com.project.invitar.service;

import com.project.invitar.model.FbLogin;
import com.project.invitar.model.FbLoginInterface;
import com.project.invitar.model.RegistrationInterface;


public interface FbLoginService {
	FbLoginInterface save(FbLoginInterface FbLogin );
	boolean findByfb_Login(String username, String contactEmail);
	boolean findByuserName(String username);
	boolean findBycontactEmail(String contactEmail);
	boolean findLoginUser();
	
}
