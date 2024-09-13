
import 'package:flutter/material.dart';
import 'package:app_mobile/models/User.dart';

class UserService {
  List<User> GetUsers(){
    List<User> users = [];
    users.add(User("John", "John Doe", 30));
    users.add(User("Nguyen", "Van Loc", 12));
    users.add(User("Nguyen", "Van Loc", 12));
    users.add(User("Nguyen", "Van Loc", 12));
    users.add(User("Hello ", "Word", 21));
    return users;
  }
}