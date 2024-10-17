import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Gridviewegg(),));
}
class Gridviewegg extends StatefulWidget {
  const Gridviewegg({super.key});

  @override
  State<Gridviewegg> createState() => _GridvieweggState();
}

class _GridvieweggState extends State<Gridviewegg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent: 200,mainAxisSpacing: 10,crossAxisSpacing: 10),
     children: [
       Container(child: Center(child: Icon(FontAwesomeIcons.facebook))),
       Container(child: Center(child: Text("2"),),color: Colors.yellow,),
       Container(child: Center(child: Text("3"),),color: Colors.greenAccent,),
       Container(child: Center(child: Text("4"),),color: Colors.blue,),
       Container(child: Center(child: Text("5"),),color: Colors.pinkAccent,),
       Container(child: Center(child: Text("6"),),color: Colors.purple,),
     ],),
    );
  }
}
