import 'package:flutter/material.dart';
void main(){
  MaterialApp(home: GridviewCutm(),);
}
class GridviewCutm extends StatefulWidget {
  const GridviewCutm({super.key});

  @override
  State<GridviewCutm> createState() => _GridviewCutmState();
}

class _GridviewCutmState extends State<GridviewCutm> {
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
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context,index){
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconss[index]),
                  Text(data[index]),
                ],
              ),
            );



          },childCount: iconss.length)),
    );
  }
}
