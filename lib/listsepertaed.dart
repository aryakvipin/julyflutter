import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home:Listseperated()));
// }

class Listseperated extends StatelessWidget {
  var name=["anu","varun","amal","manu"];
  var color=[Colors.deepPurple,Colors.blue,Colors.yellow,Colors.lightBlueAccent];
  var list=[1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List sepertaed"),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
        return Card(color: color[index],
          child: ListTile(
            title: Text(name[index]),
          ),
        );


      },
          separatorBuilder: (context,int index) {
            return Card(
              child:Text("separator ${list[index].toString()}")
            );
          },
        itemCount: name.length),
    );
  }
}
