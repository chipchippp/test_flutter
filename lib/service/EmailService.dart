import 'package:app_mobile/models/email.dart';
import 'package:flutter/material.dart';
class EmailService{
  List<Email> GetEmails(){
    List<Email> emails = [];
    // emails.add(Email("John", "join@gmail.com",));
    emails.add(Email("Doan", "doanvanh0201@gmail.com",));
    emails.add(Email("Doan", "doanvanh@gmail.com",));
    emails.add(Email("Doan", "doanvanh0201@gmail.com",));
    emails.add(Email("Doan", "doanvanh0201@gmail.com",));
    return emails;
  }
}