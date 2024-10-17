import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Gridvieweg()));
// }
class Gridvieweg extends StatefulWidget {
  const Gridvieweg({super.key});

  @override
  State<Gridvieweg> createState() => _GridviewegState();
}

class _GridviewegState extends State<Gridvieweg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ,crossAxisSpacing: 10,mainAxisSpacing: 10),
        children: [
          Container(child: Center(child: Text("1"),),color: Colors.red,),
          Container(child: Center(child: Text("2"),),color: Colors.yellow,),
          Container(child: Center(child: Text("3"),),color: Colors.greenAccent,),
          Container(child: Center(child: Text("4"),),color: Colors.blue,),
          Container(child: Center(child: Text("5"),),color: Colors.pinkAccent,),
          Container(child: Center(child: Text("6"),),color: Colors.purple,),
        ],
      ),
    );
  }
}
