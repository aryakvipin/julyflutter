import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Layout(),));
}
class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context,contrain){
        if(contrain.maxWidth<600){
          return Container(
            color: Colors.red,
            child: Center(
              child: Text("samll screen"),
            ),
          );
        }
        else{
          return Container(
            color: Colors.yellow,
            child: Center(
              child: Text("big screen"),
            ),
          );
        }

      }),
    );
  }
}
