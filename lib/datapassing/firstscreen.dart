import 'package:flutter/material.dart';
import 'package:julyfultter/datapassing/secondscreen.dart';

import 'dammyproduct.dart';
void main(){
  runApp(MaterialApp(home: Firstscreen(),
  routes: {
    "secondscreen":(context)=>Secondscreen(),
  },));
}
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: dammyproduct.map((product)=>GestureDetector(
            child: Column(
              children: [
                Text(product["name"]),
                Image(image: AssetImage(product["image"]))
              ],
            ),
            onTap: ()=>getproduct(context,product["id"]),
          )).toList(),

      )
          );


  }

void  getproduct(BuildContext context, product) {
    Navigator.pushNamed(context, "secondscreen", arguments: product);
}
}
