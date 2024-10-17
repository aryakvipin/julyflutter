import 'package:flutter/material.dart';
import 'package:julyfultter/tabbar.dart';

void main() {
  runApp(MaterialApp(
    home: Drawereg(),
  ));
}

class Drawereg extends StatefulWidget {
  const Drawereg({super.key});

  @override
  State<Drawereg> createState() => _DraweregState();
}

class _DraweregState extends State<Drawereg> {
  int index=0;
  var screen=[
    Tabbareg(),
    Text("chat"),
    Text("Call"),
    Text("data")



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.yellow[200],
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.greenAccent[200],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Arya"),
              accountEmail: Text("arya@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/fb.png"),
              ),
              otherAccountsPictures: [
                /**/
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/fb.png")),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/fb.png"),
                )
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Home") ,
            ),
            ListTile(
              leading: Icon(Icons.update),
              title:Text("Update") ,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title:Text("Send") ,
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title:Text("Drafts") ,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title:Text("Logout") ,
            ),
          ],

        ),
      ),
      body:screen[index],
      bottomNavigationBar:   BottomNavigationBar(
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
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "profile",backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chat",backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call",backgroundColor: Colors.yellow),

          BottomNavigationBarItem(
            icon:IconButton(onPressed: () {
              showModalBottomSheet(
                  context: context,
                  //backgroundColor: Colors.transparent,
                  useRootNavigator: true,
                  builder: (context) => Container(
                    height:200,
                    child: ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                  ));
            },
              icon:const Icon(Icons.person,color: Colors.white,),),
            label: '',
          ),



        ]),

    );
  }
}
