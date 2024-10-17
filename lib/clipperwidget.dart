import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home:Clippereg() ,));
// }
class Clippereg extends StatefulWidget {
  const Clippereg({super.key});

  @override
  State<Clippereg> createState() => _ClipperegState();
}

class _ClipperegState extends State<Clippereg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: Container(

              child: Image(image: AssetImage("assets/images/bg.jpg")),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              child: Image(image: AssetImage("assets/images/bg.jpg")),
            ),
          ),
          ClipOval(
            child: Container(

              child: Image(image: NetworkImage("https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?cs=srgb&dl=pexels-padrinan-255379.jpg&fm=jpg")),
            ),
          )
        ],
      ),
    );
  }
}
