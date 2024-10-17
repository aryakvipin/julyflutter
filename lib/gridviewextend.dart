import 'package:flutter/material.dart';

class gridviewe extends StatefulWidget {
  const gridviewe({super.key});

  @override
  State<gridviewe> createState() => _gridvieweState();
}

class _gridvieweState extends State<gridviewe> {
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
      body: GridView.extent(maxCrossAxisExtent: 200,
        children: List.generate(iconss.length, (index){
          return Card(color: color[index],
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconss[index]),
                Text(data[index])
              ],
            ),
          );
        })),
    );
  }
}
