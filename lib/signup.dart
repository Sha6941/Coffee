import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          TextField(decoration: InputDecoration(
            label: Text("Email Adress:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            prefixIcon: Icon(Icons.email,size: 30,),
          ),),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(
            label: Text("Password:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            prefixIcon: Icon(Icons.lock,size: 30,),
          ),),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(
            label: Text("Confirm Password:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            prefixIcon: Icon(Icons.lock,size: 30,),
          ),),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,
                  minimumSize: Size(160,50),elevation: 20),
              onPressed: () {
              }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
        ],),
      ),
    );
  }
}
