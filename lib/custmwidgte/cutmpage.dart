import 'package:flutter/material.dart';

class Cutmpage extends StatelessWidget {
  final Image img;
  final Text  text;
  final Color clr;
  Cutmpage({required this.img, required this.text, required this.clr});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Card(color:clr ,
        child: Column(
          children: [
            Container(child: text,),
            Container(child:img ,height: 50,width: 50,)
          ],
        ),
      ),
    );
  }
}
