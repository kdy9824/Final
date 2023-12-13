package com.smhrd.bigdata.controller;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class NaverEmailService {

    public static void main(String[] args) {

        final String username = "dyk2098@naver.com"; // 보내는 사람 이메일 주소
        final String password = "13579ehdduq"; // 보내는 사람 이메일 비밀번호

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.naver.com"); // Naver의 SMTP 서버
        props.put("mail.smtp.port", "465"); // Naver SMTP 포트
        props.put("mail.smtp.ssl.enable", "true"); // SSL 설정

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
                    InternetAddress.parse("dyk2098@naver.com")); // 수신자 이메일 주소
            message.setSubject("네이버 이메일 전송 테스트");
            message.setText("테스트 중");

            Transport.send(message);

            System.out.println("이메일 전송 완료!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}