import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Dismisbleeg(),));
}
class Dismisbleeg extends StatefulWidget {
  const Dismisbleeg({super.key});

  @override
  State<Dismisbleeg> createState() => _DismisbleegState();
}

class _DismisbleegState extends State<Dismisbleeg> {
  var date= ["date1","date1","date1","date1"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){

        return Dismissible(background: Container(color: Colors.greenAccent,),
            secondaryBackground: Container(color: Colors.redAccent,),
            key: ValueKey(date),
        child: Card(

          child: Container(color: Colors.yellow,height: 50,width: double.infinity,
              child: Text(date[index])),
        ));
      },itemCount: date.length,),
    );
  }
}
