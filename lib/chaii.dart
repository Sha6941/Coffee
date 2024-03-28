import 'dart:math';

import 'package:coffee/allproducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 330,
          width: 415,
          color: Colors.grey[300],
          child: Image.asset("assets/images/hottea.png",alignment: Alignment.bottomCenter,),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left:10,top: 40 ),
            child: Row(

              children: [
                IconButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Allp(),));
                  Navigator.of(context).pop();
                }, icon: Icon(Icons.close,color: Colors.teal,)),
                SizedBox(width: 100,),
                Text("HOT TEAS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(width: 100,),
                CircleAvatar(
                  backgroundColor: Colors.orange[50],
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.star,color: Colors.yellow[700],size: 25,)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Container(
            height: 530,
            width: 420,
            decoration: BoxDecoration(borderRadius: BorderRadius.vertical
              (top: Radius.elliptical(15, 15)), color: Colors.white),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 185,right: 185),
                  child: Divider(thickness:5,color: Colors.orange[500],),
                ),
                SizedBox(height: 10,),
                Center(child: Text("Chai Latte",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
                SizedBox(height: 10,),
                Center(child: Text("Black tea infused with cinnamon, clave and.\n  other warming spices is compined with\n    steamed milk and topped with foam",)),
                SizedBox(height: 20,),
                Text("RS:220",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.teal)),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[50]),
                    onPressed: () {
              
                }, child: Text("Customizations",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(children: [
                    Text("Size",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 210,),
                    TextButton(onPressed: () {
              
                    }, child:Text("Grande 16 fi oz >",
                      style: TextStyle(color: Colors.brown[300],fontWeight: FontWeight.bold),)),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                ),Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(children: [
                    Text("Add-ins",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 193,),
                    TextButton(onPressed: () {
              
                    }, child:Text("Regular Water >",
                      style: TextStyle(color: Colors.brown[300],fontWeight: FontWeight.bold),)),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                ),Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(children: [
                    Text("Espresso & Shot Options",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 160,),
                    TextButton(onPressed: () {
              
                    }, child:Text(">",
                      style: TextStyle(color: Colors.brown[300],fontWeight: FontWeight.bold),)),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                ),Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(children: [
                    Text("Flavors",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 274,),
                    TextButton(onPressed: () {
              
                    }, child:Text(">",
                      style: TextStyle(color: Colors.brown[300],fontWeight: FontWeight.bold),)),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                ),Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(children: [
                    Text("Tea",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 298,),
                    TextButton(onPressed: () {
              
                    }, child:Text(">",
                      style: TextStyle(color: Colors.brown[300],fontWeight: FontWeight.bold),)),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(),
                ),
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text("Street:8 Oak City:Fullerton..."),
                  trailing: Icon(Icons.shopping_cart_outlined),
                )
              ],),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 320,bottom: 30),
            child: FloatingActionButton(
              backgroundColor: Colors.teal,
              child:Text("Add item",style: TextStyle(color: Colors.white,fontSize: 10),),
              onPressed: () {

              },),
          ),
        ],

        )
      ],),
    );
  }
}


