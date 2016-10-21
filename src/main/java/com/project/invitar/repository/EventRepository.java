package com.project.invitar.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.invitar.model.Event;
import com.project.invitar.model.Registration;

public interface EventRepository extends JpaRepository<Event, Long> {

}
