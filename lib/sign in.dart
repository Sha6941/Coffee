
// import 'package:coffee/forgotpassword.dart';
// import 'package:coffee/home2.dart';
// import 'package:coffee/navigation%20bar.dart';
// import 'package:flutter/material.dart';
//
// class Signinn extends StatefulWidget {
//   const Signinn({super.key});
//
//   @override
//   State<Signinn> createState() => _SigninState();
// }
//
// class _SigninState extends State<Signinn> {
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   void login() {
//     String email = emailController.text;
//     String password = passwordController.text;
//     // Perform your login logic here
//     // For demonstration purposes, let's just navigate to Home screen if both username and password are not empty
//     if (email.isNotEmpty && password.isNotEmpty) {
//       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Signin(),));
//     } else {
//       // Handle invalid login case, show error message or perform other actions
//       print("Invalid login");
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.brown[300],
//       body: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Column(
//           children: [
//             TextField(decoration: InputDecoration(
//
//               label: Text("Email Adress:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//               prefixIcon: Icon(Icons.email,size: 30,),
//             ),),
//             SizedBox(height: 20,),
//             TextField(decoration: InputDecoration(
//               label: Text("Password:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//               prefixIcon: Icon(Icons.lock,size: 30,),
//             ),),
//             SizedBox(height: 30,),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,
//                     minimumSize: Size(160,50),elevation: 20),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Nvaigationbar(),));
//                 }, child: Text("Sign in",style: TextStyle(color: Colors.white),)),
//             SizedBox(height: 10,),
//             TextButton(onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot(),));
//             }, child: Text("Forgot Password?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
//                 ,fontSize: 15),),),
//             Row(
//               children: [
//                 Expanded(child: Padding(
//                   padding: const EdgeInsets.only(left: 30,right: 10),
//                   child: Divider(color: Colors.brown,thickness: 5,),
//                 )),
//                 Text("or",style: TextStyle(color: Colors.brown,fontSize: 20),),
//                 Expanded(child: Padding(
//                   padding: const EdgeInsets.only(left: 10,right: 30),
//                   child: Divider(color: Colors.brown,thickness: 5,),
//                 )),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(onPressed: () {
//
//                 }, icon: Icon(Icons.facebook,size: 30,)),
//                 IconButton(onPressed: () {
//                 }, icon: Icon(Icons.g_mobiledata,size: 40,))
//               ],)
//           ],
//         ),
//       ),
//     );
//   }
// }
















import 'package:flutter/material.dart';
import 'package:coffee/forgotpassword.dart';
import 'package:coffee/navigation%20bar.dart';

class Signinn extends StatefulWidget {
  const Signinn({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signinn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _signIn() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Here, you would typically validate the credentials against your backend
    // For the sake of this example, let's assume a simple validation
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Nvaigationbar(),));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password')),
      ); // Handle invalid login case, show error message or perform other actions
      print("Invalid login");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email Address:",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  prefixIcon: Icon(Icons.email, size: 30),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password:",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  prefixIcon: Icon(Icons.lock, size: 30),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  minimumSize: Size(160, 50),
                  elevation: 20,
                ),
                onPressed: _signIn,
                child: Text("Sign in", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgot()));
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 10),
                      child: Divider(color: Colors.brown, thickness: 5),
                    ),
                  ),
                  Text("or",
                      style: TextStyle(color: Colors.brown, fontSize: 20)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 30),
                      child: Divider(color: Colors.brown, thickness: 5),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook, size: 30),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.g_mobiledata, size: 40),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }}






