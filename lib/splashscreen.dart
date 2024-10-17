import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
  ));
}

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
     Timer(Duration(seconds: 5), (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[200],
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image(
            image: AssetImage("assets/images/fb.png",),height: 100,width: 100,
          ),
        ),
      ),
    );
  }
}
