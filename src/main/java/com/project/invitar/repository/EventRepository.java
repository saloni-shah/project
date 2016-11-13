package com.project.invitar.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.invitar.model.Event;
import com.project.invitar.model.EventInterface;

public interface EventRepository extends JpaRepository<Event, Long> {
	//@Query("select s from Registration s where s.status = 'active'")
	//RegistrationInterface findLoginUser();
	
	@Query("select e from Event e where e.eventHost = :userName")
	List<Event> getEventsOfUser(@Param("userName") String userName);

}
