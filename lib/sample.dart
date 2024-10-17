import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
        backgroundColor: Colors.yellow,
      ),
       body: Container(decoration: BoxDecoration(

    image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.fill),),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.account_balance,size: 50,color: Colors.red,),
            Image(image: AssetImage("assets/images/fb.png"),height: 100,width: 100,),
            Text(
              "flutter",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        )
      ),
    );
  }
}
