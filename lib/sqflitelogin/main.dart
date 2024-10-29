import 'package:flutter/material.dart';
import 'package:julyfultter/sqflitelogin/screens/login_signup.dart';

void main(){
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login_Signup(),
    );
  }
}


