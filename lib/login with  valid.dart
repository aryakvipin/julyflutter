import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'homepage.dart';

void main(){
  runApp(MaterialApp(home:Loginvalid() ,));
}
class Loginvalid extends StatefulWidget{
  @override
  State<Loginvalid> createState() => _LoginvalidState();
}

class _LoginvalidState extends State<Loginvalid> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.yellow[100],
        child:
        Form(
          key:formkey ,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 80),
                child: Text("Loginpage",style: TextStyle(fontSize: 30,color: Colors.red, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 70,right: 70),
                child: TextFormField(

                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "username",
                      labelText: "Username",
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains('@') || !username.contains('.')){
                      return "Enter valid Email";
                    }
                    else{
                      return null;
                    }
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 70,right: 70),
                child: TextFormField(
                  obscureText:showpass ,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if(showpass){
                            showpass=false;
                          }
                          else{
                            showpass=true;
                          }
                        });
                      },


                        icon: Icon(showpass==true ?Icons.visibility_off :Icons.visibility),),

                      hintText: "password",
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                  validator: (password){
                    if(password!.isEmpty || password.length<6){
                      return  "Enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                ),

              ),
              SizedBox(height: 50,),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green[200],foregroundColor: Colors.red
              ),
                  onPressed: (){
                     var valid=formkey.currentState!.validate();
                     if(valid){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                     }
;
                  }, child: Text("Login")),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(onPressed: (){}, child: Text("Not a user ? create an account...!")),
              )

            ],),
        ),
      ),
    );
  }
}