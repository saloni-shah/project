package com.project.invitar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.invitar.model.Registration;
import com.project.invitar.model.RegistrationInterface;

@Repository("registrationRepository")
public interface RegistrationRepository extends JpaRepository<Registration, Long> {
	
	@Query("select s from Registration s where s.userName = :userName")
	RegistrationInterface findByUserName(@Param("userName") String userName);
	
	@Transactional
	@Modifying
	@Query("update Registration SET status='active' where userName = :userName")
	void updateStatus(@Param("userName") String userName);
	
	@Query("select s from Registration s where s.status = 'active' and s.userName = :userName")
	RegistrationInterface checkUserActive(@Param("userName") String userName);

	
	
}
