import 'dart:async';

import 'package:coffee/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(child: Image.asset("assets/images/logo.png",scale: 2,))
      ),
    );

  }
}
