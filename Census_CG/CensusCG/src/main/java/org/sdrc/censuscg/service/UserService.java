package org.sdrc.censuscg.service;

import org.sdrc.censuscg.model.Mail;

public interface UserService {
	
	String sendMail(Mail mail) throws Exception;

	String sendMail(String fromUserName, String toUserName, String toEmailId,StringBuffer subject, StringBuffer msg) ;
}
