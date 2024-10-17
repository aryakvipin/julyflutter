import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Listseperated() ,));
}
class Listseperated extends StatelessWidget {
  var month=["jan","feb","mar","april","may","june","july","agu","sep","oct","nov","dec"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,indrx){
        return Card(
          child: Text(month[indrx]),
        );
      },


          separatorBuilder:(context,index){
           if(index %5==0){
             return Card(
               child: Container(color: Colors.red,
                 child: Text("Advertisment"),),
             );
           }
           else{
            return SizedBox();
           }
             }, itemCount: 10),
    );
  }
}
