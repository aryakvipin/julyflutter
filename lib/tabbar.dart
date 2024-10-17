import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridvieweg.dart';
import 'listsepeex.dart';
import 'listviewbuilder.dart';
void main(){
  runApp(MaterialApp(home:Tabbareg() ,
  debugShowCheckedModeBanner: false,));
}
class Tabbareg extends StatefulWidget {
  const Tabbareg({super.key});

  @override
  State<Tabbareg> createState() => _TabbaregState();
}

class _TabbaregState extends State<Tabbareg> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(backgroundColor: Colors.yellow[200],
        appBar: TabBar(

            labelColor: Colors.white,
            dividerColor: Colors.yellow[200],
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.black,

            tabs: [
              Tab( child: Icon(Icons.camera_alt),),
              Tab( child: Text("chat"),),
              Tab( child: Text("status"),),
              Tab( child: Text("call"),)


            ]),

        body: TabBarView(children: [
           Center(child: Icon(Icons.camera_alt),),
          Listbuilder(),
          Gridvieweg(),
          Listseperated(),

        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){},
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
