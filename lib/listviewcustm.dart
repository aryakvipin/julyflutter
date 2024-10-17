import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listviewcustm(),));
}
class Listviewcustm extends StatelessWidget {


  var name=["amal","arun","ram","balu","meera"];

  var phone=["857565674","7576465465","857565674","7576465465","97521232"];

  var image=["assets/images/fb.png","assets/images/fb.png","assets/images/fb.png","assets/images/fb.png","assets/images/fb.png"];

  var color= [Colors.yellow, Colors.blue,Colors.green,Colors.greenAccent,Colors.deepPurple];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){

        return Card(
          color: color[index],
          child: ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage(image[index]),) ,
            title: Text(name[index]),
           trailing: Wrap(
             children: [
               Icon(Icons.edit),
               SizedBox(width: 5,),
               Icon(Icons.delete)
             ],
           ),


          ),

        );




      },childCount: name.length)),
    );
  }
}
