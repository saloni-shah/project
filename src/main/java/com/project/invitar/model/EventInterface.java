package com.project.invitar.model;

import java.util.Date;

public interface EventInterface {
	public Long getId(); 
	public void setId(Long id);
	public String getEventTitle();
	public void setEventTitle(String eventTitle);
	public String getEventType();
	public void setEventType(String eventType);
	public String getEventHost();
	public void setEventHost(String eventHost);
	public Date getStartTime();
	public void setStartTime(Date startTime2);
	public String getLocation();
	public void setLocation(String location);
	public String getMessage();
	public void setMessage(String message) ;
	public String getCity();
	public void setCity(String city);
	public String getState();
	public void setState(String state);
	public String getAddress();
	public void setAddress(String address);
}
