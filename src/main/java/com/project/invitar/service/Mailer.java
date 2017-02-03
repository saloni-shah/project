package com.project.invitar.service;

import java.io.InputStream;
import java.io.StringWriter;
import java.net.URL;

import org.apache.commons.io.IOUtils;
import org.apache.commons.mail.ImageHtmlEmail;
import org.apache.commons.mail.resolver.DataSourceUrlResolver;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component("mailer")
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
     //email.setTLS(true);
//     email.setStartTLSEnabled(true);
//     email.setSSLOnConnect(true);
//     email.setSSLCheckServerIdentity(true);
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
     
     URL url = new URL("http://capstoneproject.com");
     email.setDataSourceResolver(new DataSourceUrlResolver(url));

     email.send();
 }


 
}
