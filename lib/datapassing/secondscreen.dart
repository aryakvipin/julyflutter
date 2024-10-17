import 'package:flutter/material.dart';

import 'dammyproduct.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dammyproduct.firstWhere((prodcut)=>prodcut["id"]==id);
    return Scaffold(
      body: Container(color: Colors.yellow[100]
        ,
        child: Column(
          children: [
            Text("${data["name"]}"),
            Image(image: AssetImage("${data["image"]}")),
            Text("${data["rate"]}"),
            Text("${data["description"]}"),


          ],
        ),
      ),
    );
  }
}
