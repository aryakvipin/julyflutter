import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Alertboxeg() ,));
}
class Alertboxeg extends StatefulWidget {
  const Alertboxeg({super.key});

  @override
  State<Alertboxeg> createState() => _AlertboxegState();
}

class _AlertboxegState extends State<Alertboxeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Exit...!!!"),
            content: Text("Do you want to exit?"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("yes")),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("No")),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("cancel")),

            ],

          );
        });
      },
          child: Text("Alertbox"))),
    );
  }
}
