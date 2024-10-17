import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Tableeg(),));
}
class Tableeg extends StatefulWidget {
  const Tableeg({super.key});

  @override
  State<Tableeg> createState() => _TableegState();
}

class _TableegState extends State<Tableeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          border: TableBorder.all(width: 5.0,color: Colors.black),
            columns:[
          DataColumn(label: Text("Id",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("Job",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("Salery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

        ] ,
            rows: [
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("Anu")),
                DataCell(Text("Teacher")),
                DataCell(Text("30000")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("Manu")),
                DataCell(Text("IT")),
                DataCell(Text("25000")),
              ]),
              DataRow(cells: [
                DataCell(Text("3")),
                DataCell(Text("vinu")),
                DataCell(Text("Doctor")),
                DataCell(Text("40000")),
              ]),
              DataRow(cells: [
                DataCell(Text("4")),
                DataCell(Text("Ram")),
                DataCell(Text("Teacher")),
                DataCell(Text("30000")),
              ]),
            ]),
      ),
    );
  }
}
