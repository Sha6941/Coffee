import 'package:coffee/sign%20in.dart';
import 'package:coffee/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:
    Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 445,
            child: Image.asset("assets/images/CFEE.jpg",fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Container(
              height: 473,
              width: 420,
              decoration: BoxDecoration(borderRadius: BorderRadius.vertical
                (top: Radius.elliptical(50, 50)), color: Colors.brown[300]),
              child: Column(
                children: [
                  TabBar(
                      labelColor: Colors.black,
                      labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.brown,
                      tabs: [
                   Tab(text:"Sign In"),
                    Tab(text: "Sign Up",)
                      ]),
                  Expanded(
                    child: TabBarView(children: [
                      Signinn(),
                      Signup(),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],),
      ),
    )
    );
  }
}
