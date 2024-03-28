import 'package:coffee/p1.dart';
import 'package:coffee/p2.dart';
import 'package:coffee/p3.dart';
import 'package:coffee/p4.dart';
import 'package:coffee/p6.dart';
import 'package:flutter/material.dart';

class Nvaigationbar extends StatefulWidget {
  const Nvaigationbar({super.key});

  @override
  State<Nvaigationbar> createState() => _NvaigationbarState();
}

class _NvaigationbarState extends State<Nvaigationbar> {
  int currentIndex=0;
  final List<Widget>pages=[
    Page1(),
    Page2(),
    Order1(),
    Page4(),
    Page6(),
  ];


  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: pages[currentIndex],
   bottomNavigationBar: BottomNavigationBar(
       iconSize: 30,
       unselectedFontSize: 10,
       selectedIconTheme: IconThemeData(color:Colors.black,),
       selectedItemColor: Colors.teal,
       selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
       currentIndex: currentIndex,
       type: BottomNavigationBarType.fixed,

       onTap: (index){
         setState(() {
           currentIndex=index;
         });
       },
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(
             icon: Icon(Icons.home_outlined),
             label: "HOME"
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.credit_card_sharp),
             label: "CARDS",
         ),BottomNavigationBarItem(icon: Icon(Icons.coffee_outlined),
             label: "ORDER"
         ),BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
             label: "GIFT"
         ),BottomNavigationBarItem(icon: Icon(Icons.store_outlined),
             label: "STORES",
         ),
       ]

   ),
 );
  }
}
