import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stackeg(),
  ));
}

class Stackeg extends StatefulWidget {
  const Stackeg({super.key});

  @override
  State<Stackeg> createState() => _StackegState();
}

class _StackegState extends State<Stackeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: double.infinity,
            width: double.infinity,
          ),

          Positioned(height:600,width:502,top: 200,
              child: Center(
            child: Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.only(topLeft: Radius.circular(
              30,
            ),topRight: Radius.circular(
              30,
            ),)),

            ),
          )),
          Positioned(height: 200,width: 200,right: 150,top: 100,
              child: Center(
                   child: Container(

                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg"),
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                //
              ),
              )),
        ],
      ),
    );
  }
}
