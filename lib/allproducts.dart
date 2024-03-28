import 'package:coffee/chaii.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Allp extends StatefulWidget {
  const Allp({super.key});

  @override
  State<Allp> createState() => _AllpState();
}

class _AllpState extends State<Allp> {
  final images=["assets/images/bl.png","assets/images/hottea.png","assets/images/iced1.png","assets/images/iced.png"];
  final names=["Hot Coffees","   Hot Teas","Iced Coffees","Iced Caramel"];
  final image2=["assets/images/brk.png","assets/images/bun.png","assets/images/burger.png","assets/images/sandwitch.png",];
  final name2=["Hot Breakfast","   Bakery","   Burgers","Sandwich",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[50],minimumSize: Size(70, 35)),
                    onPressed: () {

                    }, child: Text("DRINKS",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(width: 180,),
              Text("See all",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.arrow_forward,color: Colors.brown,))
            ],),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              height: 222,
              child: ListView.separated(separatorBuilder: (context, index) {
                return SizedBox(width: 15,);
              },
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                          height: 210,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 120,left: 60,right: 60),
                            child: Divider(thickness:5,color: Colors.orange[500],),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(25) ,
                            //image: DecorationImage(image: AssetImage("assets/images/Esasycoffee.jpg",),alignment: Alignment.topCenter),
                            color: Colors.amber[50],
                          )
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          height: 140,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(25) ,
                            image: DecorationImage(image: AssetImage("${images[index]}",),alignment: Alignment.center),
                            color: Colors.teal[900],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 165,left: 20),
                        child: TextButton(onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Buy(),));
                        }, child:Text("${names[index]}",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),),)
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Divider(),
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[50],minimumSize: Size(70, 35)),
                  onPressed: () {
                  }, child: Text("FOOD",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 20,),
            SizedBox(width: 190,),
            Text("See all",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.arrow_forward,color: Colors.brown,))
          ],),
          SizedBox(height: 20,),
          Container(
            height: 210,
            child: ListView.separated(separatorBuilder: (context, index) {
              return SizedBox(width: 15,);
            },
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                        height: 210,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 120,left: 60,right: 60),
                          child: Divider(thickness:5,color: Colors.orange[500],),
                        ),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(25) ,
                          //image: DecorationImage(image: AssetImage("assets/images/Esasycoffee.jpg",),alignment: Alignment.topCenter),
                          color: Colors.amber[50],
                        )
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height: 140,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(25) ,
                          image: DecorationImage(image: AssetImage("${image2[index]}",),alignment: Alignment.center),
                          color: Colors.teal[900],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170,left: 20),
                      child: TextButton(onPressed: () {

                      }, child:Text("${name2[index]}",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),),)
                    ),
                  ],
                );
              },
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
