

import 'package:app_mobile/models/email.dart';
import 'package:app_mobile/pages/CartPage.dart';
import 'package:app_mobile/service/EmailService.dart';
import 'package:app_mobile/widgets/HeaderAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_mobile/service/UserService.dart';
import 'package:app_mobile/models/User.dart';

class NavPage extends StatelessWidget {
  final UserService userService = UserService();
  final EmailService emailService = EmailService();
  @override
  Widget build(BuildContext context) {
    List<User> users = userService.GetUsers();
    List<Email> emails = emailService.GetEmails();
    return MaterialApp(
      home: DefaultTabController(length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Danh sách'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.email)
                ),
              Tab(
                icon: Icon(Icons.phone)
                ),
            ],
          ),
        ),
       body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(emails[index]. name),
            subtitle: Text(emails[index].email),
          );
        },
      ),
      )),
    );
  }
}