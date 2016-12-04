package com.project.invitar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.invitar.model.FbLogin;
import com.project.invitar.model.FbLoginInterface;


@Repository("FbRepository")
public interface FbRepository extends JpaRepository<FbLogin, Long> {
	
	@Query("select s from fb_login s where s.name = :name")
	FbLoginInterface findByname(@Param("name") String name);
	
	@Transactional
	@Modifying
	@Query("update fb_login SET status='active' where name = :name")
	void updateStatus(@Param("name") String fb_name);
	
//	@Query("select s from fb_login s where s.status = 'active' and s.name = :name")
//	FbLoginInterface checkUserActive(@Param("name") String name);

	
	
}