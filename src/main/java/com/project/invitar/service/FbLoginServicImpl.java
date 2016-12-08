package com.project.invitar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.invitar.model.Event;
import com.project.invitar.model.EventInterface;
import com.project.invitar.model.FbLogin;
import com.project.invitar.model.FbLoginInterface;
import com.project.invitar.model.Registration;
import com.project.invitar.model.RegistrationInterface;
import com.project.invitar.repository.FbRepository;
import com.project.invitar.repository.RegistrationRepository;

@Service("FbLoginService")
public class FbLoginServicImpl implements FbLoginService {

	private FbRepository fbRepository;
	@Autowired
	public FbLoginServicImpl(FbRepository fbRepository){
		this.fbRepository = fbRepository;
	}
	
	@Transactional
//	public FbLoginInterface save(FbLoginInterface  name) {
//		return fbRepository.save((FbLogin)fb_login);
//	}

//	public boolean findByLogin(String userName, String password) {	
//		RegistrationInterface reg = registrationRepository.findByUserName(userName);
//		
//		if(reg != null && reg.getPassword().equals(password)) {
//			registrationRepository.updateStatus(userName);
//			return true;
//		} 
//		
//		return false;		
//	}
//
//	public boolean findByname1(String name) {
//		FbLoginInterface reg = FbRepository.findByname(name);
//		
//		if(reg != null) {
//			return true;
//		}
//		
//		return false;
//	}

	@Override
	public FbLoginInterface save(FbLoginInterface FbLogin) {
		// TODO Auto-generated method stub
		return (FbLoginInterface) fbRepository.save((FbLogin)FbLogin);
		
	}
	
	
	
	@Override
	public boolean findByfb_Login(String username, String contactEmail) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean findLoginUser() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean findBycontactEmail(String contactEmail) {
//		// TODO Auto-generated method stub
////		FbLoginInterface fblog = FbLoginInterface.checkUserActive(contactEmail);
				return false;
	}

	@Override
	public boolean findByuserName(String username) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
//	public boolean checkUserActive(String userName) {
//		RegistrationInterface reg = registrationRepository.checkUserActive(userName);
//		
//		if(reg != null) {
//			return true;
//		}
//		
//		return false;
//	}
}