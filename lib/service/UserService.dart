
import 'package:flutter/material.dart';
import 'package:app_mobile/models/User.dart';

class UserService {
  List<User> GetUsers(){
    List<User> users = [];
    users.add(User("John", "John Doe", 25));
    users.add(User("Doan", "Viet Anh", 20));
    users.add(User("Luong", "Manh", 20));
    return users;
  }
}