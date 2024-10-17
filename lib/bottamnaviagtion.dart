import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Bottamnavigation() ,));
}
class Bottamnavigation extends StatefulWidget {
  const Bottamnavigation({super.key});

  @override
  State<Bottamnavigation> createState() => _BottamnavigationState();
}

class _BottamnavigationState extends State<Bottamnavigation> {
  int index=1;
  var screen=[
    Text("profile"),
    Text("chat"),
    Text("Call"),
    Text("contact"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap:(tapindex){
            setState(() {
              index=tapindex;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.yellow,


          items: [
        BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "profile",backgroundColor: Colors.yellow),
        BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chat",backgroundColor: Colors.yellow),
        BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call",backgroundColor: Colors.yellow),
        BottomNavigationBarItem(icon: Icon(Icons.contact_page,),label: "Contact",backgroundColor: Colors.yellow),



      ]),

      body: Center(child: screen[index],),
    );
  }
}
