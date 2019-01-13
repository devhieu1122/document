package com.tool;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	public static boolean sendMail(String to, String subject, String text) {
		 Properties props = new Properties();
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.host", "smtp.gmail.com");
	        props.put("mail.smtp.port", "587");
	        Session session = Session.getInstance(props,
	                new javax.mail.Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("devhjeu1998@gmail.com", "hieu_1998");
	            }
	        });
	        try {
	            Message message = new MimeMessage(session);
	            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
	            message.setFrom(new InternetAddress("devhjeu1998@gmail.com"));
	            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
	            message.setSubject(subject,"utf-8");
	            message.setText(text);
	            Transport.send(message);
	        } catch (MessagingException e) {
	            e.printStackTrace();
	            return false;
	        }
	        return true;
	}
	public static void main(String[] args) {
		System.out.println(sendMail("nhuutai2698@gmail.com", "HTDSHOP", "Hello, nguyenhieu2pro \nCảm ơn bạn đã mua hàng tại của hàng của chúng tôi\n- Đơn hàng của bạn:0112 \n- Tổng đơn hàng:135.000.000 VND\n- Địa chỉ giao hàng của bạn: Ocean\n- Số điện thoại người nhận hàng: 0344105501\n\n\t\t\t Chúc bạn một ngày tốt lành!"));
	}
}
