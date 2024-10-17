import 'package:flutter/material.dart';
void  main(){
  runApp(MaterialApp(home: checkedboxx(),));
}
class checkedboxx extends StatefulWidget {
  const checkedboxx({super.key});

  @override
  State<checkedboxx> createState() => _checkedboxxState();
}

class _checkedboxxState extends State<checkedboxx> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(checkColor: Colors.red,
            activeColor:Colors.greenAccent ,
            value: ischecked, onChanged: (bool ? value ){
          setState(() {
            ischecked=value!;
          });
        }),
      ),
    );
  }
}
