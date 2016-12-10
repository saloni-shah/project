//package com.project.invitar.repository;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Modifying;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
//import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
//
//
//import com.project.invitar.model.FbLogin;
//import com.project.invitar.model.FbLoginInterface;
//
//
//@Repository("FbRepository")
//public interface FbRepository extends JpaRepository<FbLogin, Long> {
//	
//	@Query("select s from FbLogin s where s.userName = :userName")
//	FbLoginInterface findByuserName(@Param("userName") String userName);
//	
//	@Transactional
//	@Modifying
//	@Query("update FbLogin SET status='active' where userName = :userName")
//	void updateStatus(@Param("userName") String userName);
//	
//	@Query("select s from FbLogin s where s.contactEmail = :contactEmail")
//	FbLoginInterface findBycontactEmail(@Param("contactEmail") String contactEmail);
////	@Query("select s from fb_login s where s.status = 'active' and s.name = :name")
////	FbLoginInterface checkUserActive(@Param("name") String name);
//
////	 FbLoginInterface checkUserActive(@Param("userName")String userName) {
////		// TODO Auto-generated method stub
////		return null;
////	}
//	
//	
//	
//}
