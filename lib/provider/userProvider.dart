
import 'package:flutter/material.dart';
import 'package:nokia/model/user.dart';

class StudentProvider extends ChangeNotifier {
  Student _user = Student(
    id: '', 
    teamname: '', 
    mentor: '', 
    firstname: '', 
    lastname: '', 
    captain: '', 
    nokiaid: '', 
    vcaptaintwo: '', 
    vcaptainone: ''
  );

  Student get user => _user;
  
  void setUser(String user) {
    _user = Student.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(Student user) {
    _user = user;
    notifyListeners();
  }

  
}