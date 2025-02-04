

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logipage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences data;
   String? username;
   String ?name;
  @override
  void initState() {
    fetchonme();
    super.initState();
  }
  void fetchonme()async{
    data = await SharedPreferences.getInstance();
    setState(() {
      username=data.getString('username')!;
      name=data.getString('name')!;
      ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$username"),),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hai, Welcome $name",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
              data.setBool('newuser',true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedprefernce()));
            }, child: Text("logout")),
            //
          ],
        ),
      ),
    );
  }
}
