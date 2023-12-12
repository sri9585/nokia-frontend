import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nokia/Service/auth.dart';

class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController id = TextEditingController();
  final AuthService _authService = AuthService();
  void _signIn(){
    _authService.signInUser(
      context: context, 
      nokiaid: id.text
    );
    print('clicked');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('asset/Purple-Blue Desktop gradient.jpg')
          )
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/Nokia logo RGB-White_HR.png')
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:250.0),
              child:  Card(
                child:  Padding(
                  padding:  const EdgeInsets.only(left:8.0),
                  child: TextField(
                    controller: id,
                    decoration: const InputDecoration(
                      hintText: 'Enter ID',
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.7, 
                    MediaQuery.of(context).size.height * 0.05
                  )
                ),
                onPressed: (){
                  _signIn();
                }, 
                child: Text(
                  'Login',
                  style: GoogleFonts.merriweather(
                    color: Colors.black
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}