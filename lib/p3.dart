import 'package:coffee/allproducts.dart';
import 'package:coffee/fav.dart';
import 'package:coffee/home2.dart';
import 'package:coffee/sign%20in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order1 extends StatefulWidget {
  const Order1({super.key});

  @override
  State<Order1> createState() => _OrderState();
}

class _OrderState extends State<Order1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.teal),
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signinn()));
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Center(child: Text("ORDER",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.search,size: 30,))
        ],
      ),
      body: Column(
        children: [
          TabBar(
              tabs:[
            Tab(text: "All products",),
            Tab(text: "Favorite",),
          ]),
          Expanded(
            child: TabBarView(children: [
              Allp(),
              Fav()
            ]),
          )
        ],
      ),

    )
    );
  }
}
