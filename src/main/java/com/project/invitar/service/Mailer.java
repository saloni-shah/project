package com.project.invitar.service;

import java.io.File;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Context;

import org.apache.commons.io.IOUtils;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.ImageHtmlEmail;
import org.apache.commons.mail.resolver.DataSourceUrlResolver;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.mail.*;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.ui.velocity.VelocityEngineUtils;

public class Mailer {
 private JavaMailSender mailSender;
 private VelocityEngine velocityEngine;

 public void setMailSender(JavaMailSender mailSender) {
  this.mailSender = mailSender;
 }

 public void setVelocityEngine(VelocityEngine velocityEngine) {
  this.velocityEngine = velocityEngine;
 }

 public void sendMail(final Mail mail) throws Exception {	
     InputStream inputstream = this.getClass().getResourceAsStream("/templates/invitar.vm");
     StringWriter writer = new StringWriter();
     IOUtils.copy(inputstream, writer, "UTF-8");
     String theString = writer.toString();
     ImageHtmlEmail email = new ImageHtmlEmail();
     email.setTLS(true);
     email.setSSLOnConnect(true);
     email.setSSLCheckServerIdentity(true);
     String id=mail.getMailTo();
     email.setHostName("smtp-pulse.com");
     email.setSmtpPort(2525);
     email.setAuthentication("ashasn@gmail.com", "tLTbr385G57NMb");
     email.addTo(id,"Asha hari");
     email.setFrom("ashasn@gmail.com","Asha H");    
     email.setSubject("Important");
     String location=mail.getLocation();
     String event=mail.getEvent();
     String host=mail.getHost();
     String when=mail.getWhen();
     email.setDebug(true);

     email.setHtmlMsg(theString.replace("${location}",location).replace("${eventTitle}",event).replace("${eventHost}",host).replace("${startTime}",when));
     
     URL url = new URL("http://capstoneproject.com:8080");
     email.setDataSourceResolver(new DataSourceUrlResolver(url));

     email.send();
 }


 
}
