import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:datepickereg() ,));
}
class datepickereg extends StatefulWidget {
  const datepickereg({super.key});

  @override
  State<datepickereg> createState() => _datepickeregState();
}

class _datepickeregState extends State<datepickereg> {
  DateTime selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller:TextEditingController(text:"${selectdate.toLocal()}".split(" ")[0]) ,
           readOnly: true,
          decoration: InputDecoration(
            hintText: "Select date",
            suffixIcon: Icon(Icons.calendar_month)
          ),
          onTap: ()=>dateselcet(context),
        ),
      ),
    );
  }

 Future<void> dateselcet(BuildContext context) async{
    final DateTime ? picktime=await showDatePicker(
        context: context, firstDate: DateTime(2020), lastDate: DateTime(2025));
    if(picktime!=null && picktime!=selectdate){
      setState(() {
        selectdate=picktime!;
      });
    }

  }
}
