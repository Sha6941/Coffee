
import 'package:coffee/home2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:700,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 230),
              child: Image.asset("assets/images/Coffee1.jpg",fit: BoxFit.cover,),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470),
            child: Container(
              height: 388,
              child: Image.asset("assets/images/coffe2.jpeg",fit: BoxFit.cover,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470,left: 10,right: 10),
            child: Container(
              height: 360,
              width: 400,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Text("Welcome to Coffee Shop",
                      style: TextStyle(color: Colors.brown,fontWeight:FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 20,),
                    Text("Get wide range of speciality coffee,\n            tea and beverages.",
                      style: TextStyle(color: Colors.brown[400],fontWeight:FontWeight.bold,fontSize: 17),),
                    SizedBox(height: 50,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[300],
                            minimumSize: Size(120,40),elevation: 20),
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
                        }, child: Text("Sign in",style: TextStyle(color: Colors.white),))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
