package com.project.invitar.service;

import java.util.List;

import com.project.invitar.model.Event;
import com.project.invitar.model.EventInterface;
import com.project.invitar.model.RegistrationInterface;

public interface EventService {
	EventInterface save(EventInterface event);
	List<Event> getEventsOfUser(String userName);
	//boolean findLoginUser();
}
