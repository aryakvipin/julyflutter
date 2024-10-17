import 'package:flutter/material.dart';

import 'gridviewextend.dart';
import 'listsepeex.dart';
void main(){
  runApp(MaterialApp
    (home: Namedrouts(),
  routes: {
     "grid" : (context)=>gridviewe(),
      "list"   :(context)=>Listseperated(),
  },));
}
class Namedrouts extends StatelessWidget {
  const Namedrouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "grid",);
            }, child: Text("screen1")),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "list");
            }, child: Text("screen2")),

            ],
        ),
      ),
    );
  }
}
