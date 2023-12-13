package com.smhrd.bigdata.controller;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class SmsSender {
  // Find your Account Sid and Token at twilio.com/console
  public static final String ACCOUNT_SID = "AC15213be4ffb638ea5ead01b7b8dcfd2f";
  public static final String AUTH_TOKEN = "f16e3edf0a45914eb48e742345d43119";

  public static void main(String[] args) {
    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    Message message = Message.creator(
      new com.twilio.type.PhoneNumber("+821062033145"),
      new com.twilio.type.PhoneNumber("+12058098537"),
      "그런갑다"
    ).create();

    System.out.println(message.getSid());
  }
}