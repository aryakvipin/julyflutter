import 'package:flutter/material.dart';

class Cutmwidgte extends StatelessWidget {
  final Image  img;
  final Text title;
  final   Text? subtitle;
  final Icon ? iconss;
  VoidCallback  onprss;
  Cutmwidgte({ required this.img, required this.title,  this.subtitle,required this.onprss, this.iconss}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: Colors.redAccent[100],
        child: Column(
          children: [
            ListTile(
              leading:img ,
              title: title,
              subtitle:subtitle ,
              trailing: iconss,
              onTap: onprss,
            ),

            Container(child: img,)
          ],
        ),
      ),


    );
  }
}
