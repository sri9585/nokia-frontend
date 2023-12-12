  // sign in user
  // ignore_for_file: use_build_context_synchronously

  import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:nokia/Screen/home/Home.dart';
import 'package:nokia/provider/userProvider.dart';
import 'package:provider/provider.dart';

class AuthService{
  void signInUser({
    required BuildContext context,
    required String nokiaid
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('http://13.233.103.13:5000/auth/user/signin'),
        body: jsonEncode({
          'nokiaid': nokiaid,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(nokiaid);
      if(res.statusCode == 200){
        Provider.of<StudentProvider>(context, listen: false).setUser(res.body);
        //final student = Provider.of<StudentProvider>(context,listen: false).user;
        Navigator.push(context, MaterialPageRoute(
          builder:(context) => HomeScreen(),
        ));
        
      }else{
        print('Failed');
      }
    } catch (e) {
      print(e);
    }
  }

}