import 'package:flutter/material.dart';
import 'package:julyfultter/datapassing2/prodcutlist.dart';

class Sconddscreen extends StatefulWidget {
  const Sconddscreen({super.key});

  @override
  State<Sconddscreen> createState() => _SconddscreenState();
}

class _SconddscreenState extends State<Sconddscreen> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=productlist.firstWhere((prodcut)=>prodcut["id"]==id);
    return Scaffold(
      body: Container(color: Colors.yellow[100]
        ,
        child: Column(
          children: [
            Text("${data["name"]}"),
            Text("${data["rate"]}"),
            Text("${data["description"]}"),

          ],
        ),
      ),
    );
  }
}
