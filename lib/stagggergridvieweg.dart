import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: Staggerd(),));
}
class Staggerd extends StatefulWidget {


  @override
  State<Staggerd> createState() => _StageState();
}

class _StageState extends State<Staggerd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10
          ,children: [
            StaggeredGridTile.count(crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Container(color: Colors.red,
                  child: Text("1"),
                )),
        
            StaggeredGridTile.count(crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(color: Colors.yellow,
                  child: Text("2"),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(color: Colors.blue,
                  child: Text("3"),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(color: Colors.red,
                  child: Text("1"),
                )),
        
            StaggeredGridTile.count(crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(color: Colors.yellow,
                  child: Text("2"),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(color: Colors.blue,
                  child: Text("3"),
                ))
        
        ,   StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(color: Colors.red,
                  child: Text("1"),
                )),
        
            StaggeredGridTile.count(crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(color: Colors.yellow,
                  child: Text("2"),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(color: Colors.blue,
                  child: Text("3"),
                ))
        
        
          ],),
      ),

    );
  }
}
