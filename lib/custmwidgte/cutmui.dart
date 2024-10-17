import 'package:flutter/material.dart';

import 'cutmpage.dart';
void main(){
  runApp(MaterialApp(home: Custmui(),));
}
class Custmui extends StatefulWidget {
  const Custmui({super.key});

  @override
  State<Custmui> createState() => _CustmuiState();
}

class _CustmuiState extends State<Custmui> {
  var color=[Colors.red,Colors.yellow,Colors.greenAccent,Colors.blue,Colors.purple,Colors.pink,
  ];
  var image=
  ["assets/images/fb.png",
   "assets/images/fb.png",
    "assets/images/fb.png",
    "assets/images/fb.png",
    "assets/images/fb.png",
    "assets/images/fb.png",
  ];
  var data=[
    "account_balance",
    "add_alert",
    "access_alarms_rounded",
    "add_circle",
    "ac_unit",
    "insert_comment_rounded"



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
           return Card(
             child: Cutmpage(img: Image(image: AssetImage(image[index],)),
               text: Text(data[index]), clr: color[index],),
           );

      },itemCount: data.length),
    );
  }
}
