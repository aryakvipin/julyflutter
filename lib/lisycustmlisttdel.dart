import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Listcutmlist() ,));
}
class Listcutmlist extends StatelessWidget {
  var name=["amal","arun","ram","balu","meera"];

  var phone=["857565674","7576465465","857565674","7576465465","97521232"];

  var image=["assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg"];

  var color= [Colors.yellow, Colors.blue,Colors.green,Colors.greenAccent,Colors.deepPurple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(name.length, (index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
            ),
          );
        })

      )),

    );
  }
}
