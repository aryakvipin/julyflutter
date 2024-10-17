import 'package:flutter/material.dart';
import 'package:julyfultter/mediaquery/responsive.dart';

class Rightwidgt extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       height: Resposnive.isWeb(context)? double.infinity :200,
       color: Colors.red[100],
       child: Text("data"),
     );
  }

}