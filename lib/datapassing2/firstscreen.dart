import 'package:flutter/material.dart';
import 'package:julyfultter/datapassing2/prodcutlist.dart';
import 'package:julyfultter/datapassing2/secondscreenn.dart';
void main(){
  runApp(MaterialApp(home:frstscreen() ,
  routes: {
    "screen-second":(context)=>Sconddscreen(),
  },)
  ,);
}
class frstscreen extends StatefulWidget {
  const frstscreen({super.key});

  @override
  State<frstscreen> createState() => _frstscreenState();
}

class _frstscreenState extends State<frstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: productlist.map((prodcut)=>GestureDetector(
        child: Card(child: Column(
        children: [
        Text(prodcut["name"]),
        Image(image: AssetImage(prodcut["image"]),fit: BoxFit.contain,height: 200,width: 200,)
        ],
      ),
      ),
        onTap: ()=>getproduct(context,prodcut["id"]),
      )
      ).toList()),
    );
  }

  Future<void>getproduct(BuildContext context, product) async {
    Navigator.pushNamed(context, "screen-second",arguments:product );
  }
}
