import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: loginpage(),));
}
class loginpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.yellow[100],
        child:
        Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 80),
            child: Text("Loginpage",style: TextStyle(fontSize: 30,color: Colors.red, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 70,right: 70),
            child: TextField(

              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                hintText: "username",
                labelText: "Username",
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(30))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 70,right: 70),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility_off),

                hintText: "password",
                  labelText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
            ),
            
          ),
                   SizedBox(height: 50,),
           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green[200],foregroundColor: Colors.red
               ),
               onPressed: (){


           }, child: Text("Login")),

           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: TextButton(onPressed: (){}, child: Text("Not a user ? create an account...!")),
           )
          
        ],),
      ),
    );
  }
}
