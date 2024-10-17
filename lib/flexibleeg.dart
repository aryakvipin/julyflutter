import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:flexibleg() ,));
}
class flexibleg extends StatefulWidget {
  const flexibleg({super.key});

  @override
  State<flexibleg> createState() => _flexiblegState();
}

class _flexiblegState extends State<flexibleg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),Flexible(
            flex: 4,
            child: Container(
                  color: Colors.yellow,
                ),
          ),



        ],
      ),
    );
  }
}
