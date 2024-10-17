import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Bottamsheet() ,));
}
class Bottamsheet extends StatefulWidget {
  const Bottamsheet({super.key});

  @override
  State<Bottamsheet> createState() => _BottamsheetState();
}

class _BottamsheetState extends State<Bottamsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container()

      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return ListView(
        children: [
          ListTile(
            title: Text("data1"),
            subtitle: Text("details1"),
          ),
          ListTile(
            title: Text("data2"),
            subtitle: Text("details1"),
          ),
          ListTile(
            title: Text("data2"),
            subtitle: Text("details1"),
          )
        ],
      );
    });
  }
}
