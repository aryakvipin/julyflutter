import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expandedtileeg(),));
}
class Expandedtileeg extends StatefulWidget {
  const Expandedtileeg({super.key});

  @override
  State<Expandedtileeg> createState() => _ExpandedtileegState();
}

class _ExpandedtileegState extends State<Expandedtileeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            backgroundColor: Colors.lime[100],
            title: Text("light color"),
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.limeAccent[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.redAccent[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.greenAccent[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.blueAccent[100],),),

            ],
          ),
          ExpansionTile(title: Text("Dark color"),
            backgroundColor: Colors.pink,
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),

            ],
          )
        ],
      ),
    );
  }
}
