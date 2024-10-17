import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Expandedeg() ,));
}
class Expandedeg extends StatefulWidget {
  const Expandedeg({super.key});

  @override
  State<Expandedeg> createState() => _ExpandedegState();
}

class _ExpandedegState extends State<Expandedeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Container(color: Colors.red,height: double.infinity,width:100),
        Container(color: Colors.yellow,width: 100,height:double. infinity),
        Expanded(child: Container(color: Colors.green,width: 100,height:double. infinity,))




      ],),
    );
  }
}
