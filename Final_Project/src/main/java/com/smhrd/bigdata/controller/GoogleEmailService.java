package com.smhrd.bigdata.controller;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class GoogleEmailService {

    public static void main(String[] args) {

        final String username = "dyk209885@gmail.com"; // 구글 이메일 주소
        final String password = "gstbdaflylessmfh"; // 구글 앱 비밀번호

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Gmail의 SMTP 서버
        props.put("mail.smtp.port", "587"); // Gmail SMTP 포트

        Session session = Session.getInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username)); // 보내는 사람 주소
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("koreankoala22@gmail.com")); // 수신자 이메일 주소
            message.setSubject("피니...? 알림");
            message.setText("제대로 가는갑다");

            Transport.send(message);

            System.out.println("이메일 전송 완료!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}