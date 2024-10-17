import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcount(),));
}
class Gridviewcount extends StatefulWidget {
  const Gridviewcount({super.key});

  @override
  State<Gridviewcount> createState() => _GridviewcountState();
}

class _GridviewcountState extends State<Gridviewcount> {
  var color=[Colors.red,Colors.yellow,Colors.greenAccent,Colors.blue,Colors.purple,Colors.pink,
  ];
  var iconss=
  [Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarms_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.insert_comment_rounded];
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
      body: GridView.count(crossAxisCount: 2,
        children: List.generate(iconss.length, (index){
          return Card(color: color[index],
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconss[index]) ,
                Text(data[index],style: GoogleFonts.abrilFatface(
                  fontSize: 25
                ),)
              ],
            ),
          );
        }),),
    );
  }
}
