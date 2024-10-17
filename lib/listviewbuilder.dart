import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home:Listbuilder() ,));
// }
class Listbuilder extends StatefulWidget{
  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
   var name=["amal","arun","ram","balu","meera"];

   var phone=["857565674","7576465465","857565674","7576465465","97521232"];

   var image=["assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg"];

   var color= [Colors.yellow, Colors.blue,Colors.green,Colors.greenAccent,Colors.deepPurple];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.red[100],
      body: ListView.builder(itemBuilder: (context,index){
        return new Card(
            child: new Column(

              children: [
                new ListTile(
                  leading: new Image.asset(
                    image[index],
                    fit: BoxFit.cover,
                    width: 100.0,
                  ),

                  title: new Text(
                    name[index],
                    style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text( name[index],
                            style: new TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.normal)),
                        new Text('Population: ${ name[index]}',
                            style: new TextStyle(
                                fontSize: 11.0, fontWeight: FontWeight.normal)),
                      ]),
                  //trailing: ,

                )
              ],
            ));

      },itemCount: name.length,
      ),

    );
  }
}