package com.project.invitar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.invitar.model.Event;
import com.project.invitar.model.EventInterface;
import com.project.invitar.repository.EventRepository;

@Service("EventService")
public class EventServiceImpl implements EventService{
	@Autowired
	private EventRepository eventRepository;

	@Override
	public EventInterface save(EventInterface event) {
		return eventRepository.save((Event)event);
	}
	

}
