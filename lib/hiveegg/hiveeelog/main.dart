
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:julyfultter/hiveegg/hiveeelog/loginpage.dart';
import 'package:julyfultter/hiveegg/hiveeelog/register.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox('usersBox');

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoginPage(),
      '/login': (context) => LoginPage(),
      '/register': (context) => RegisterPage(),
    },
  ));
}
