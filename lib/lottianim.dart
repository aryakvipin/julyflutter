import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home:lotiieg() ,));
}
class lotiieg extends StatefulWidget {
  const lotiieg({super.key});

  @override
  State<lotiieg> createState() => _lotiiegState();
}

class _lotiiegState extends State<lotiieg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/Anim/Animation1.json"),
      ),
    );
  }
}
