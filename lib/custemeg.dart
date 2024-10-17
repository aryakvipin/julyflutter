import 'package:flutter/material.dart';

import 'clipperwidget.dart';
import 'custmwidget.dart';

void main() {
  runApp(MaterialApp(
    home: cutemeg(),
  ));
}

class cutemeg extends StatelessWidget {
  const cutemeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Cutmwidgte(
          img: Image(image: AssetImage('assets/images/bg.jpg')),
          title: Text("data"),
          iconss: Icon(Icons.account_balance),
          onprss: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Clippereg()));
          },
        ),
      ),
    );
  }
}
