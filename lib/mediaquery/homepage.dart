import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:julyfultter/mediaquery/centerwidget.dart';
import 'package:julyfultter/mediaquery/leftwidget.dart';
import 'package:julyfultter/mediaquery/reightwidgt.dart';
import 'package:julyfultter/mediaquery/responsive.dart';
void main(){
  runApp(MaterialApp(home:homepage() ,));
}
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Resposnive.isWeb(context) ?AppBar(title: Text("Screens"),
      actions: [

        if(!Resposnive.isWeb(context))
          IconButton(onPressed: (){
            if(MediaQuery.of(context).orientation==Orientation.portrait){
              SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
            }
            else{
              SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
            }



          }, icon: Icon(Icons.arrow_drop_down_circle))
      ],) :null,
      drawer: Drawer(child: leftwidgte() ,),
      body: Row(
    children: [
    if(Resposnive.isWeb(context))
      Expanded(child: leftwidgte(),flex: 2,),
    Expanded(child: Centewidget(),flex: 5,),
     if(Resposnive.isWeb(context))
    Expanded(child: Rightwidgt(),flex: 3,),
    ],
      ) );
  }
}
