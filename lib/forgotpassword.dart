import 'dart:ffi';

import 'package:coffee/home2.dart';
import 'package:coffee/sign%20in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Change your password?",style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Container(
            width: 370,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
              hintText: "Enter your email or phone",
            ),
            ),
          ),
            SizedBox(height: 15,),
            Container(
            width: 370,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
              hintText: "Enter new password",
            ),
            ),
          ),
            SizedBox(height: 15,),
            Container(
            width: 370,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
              hintText: "Re-enter password",
            ),
            ),
          ),
            SizedBox(height: 15,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[300],),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                  Navigator.of(context).pop();
            }, child: Text("SUBMIT",style: TextStyle(color: Colors.black),))
        ],),
      ),
    );
  }
}
