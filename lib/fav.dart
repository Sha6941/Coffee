import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _AllpState();
}

class _AllpState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[50],minimumSize: Size(70, 35)),
                onPressed: () {

                }, child: Text("DRINKS",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)),
            SizedBox(width: 170,),
            Text("See all",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.arrow_forward,color: Colors.brown,))


          ],),
      ),
    );
  }
}
