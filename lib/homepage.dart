import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Homepage() ,));
}
class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Card(color: Colors.red[200],
            child: ListTile(
              leading:Image(image: AssetImage("assets/images/fb.png")) ,
              title: Text("arun"),
              subtitle: Text("98684343423"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.yellow[100],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:AssetImage("assets/images/bg.jpg"),),
              title: Text("arun"),
              subtitle: Text("98684343423"),
              trailing: Icon(Icons.call),
            ),
          )


        ],
      )
    );
  }
}
