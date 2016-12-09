package com.project.invitar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.invitar.model.Event;
import com.project.invitar.model.EventInterface;
import com.project.invitar.model.RegistrationInterface;
import com.project.invitar.repository.EventRepository;

@Service("EventService")
public class EventServiceImpl implements EventService{
	@Autowired
	private EventRepository eventRepository;

	@Override
	public EventInterface save(EventInterface event) {
		return eventRepository.save((Event)event);
	}

	
	public List<Event> getEventsOfUser(String userName) {
		return (List<Event>)eventRepository.getEventsOfUser(userName);
	}

	/*@Override
	public boolean findLoginUser() {
		RegistrationInterface reg = eventRepository.findLoginUser();
		
		if(reg != null) {
			return true;
		}
		
		return false;
	}*/
	

}
