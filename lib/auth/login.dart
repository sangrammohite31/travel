import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelme/auth/auth.dart';
import 'package:travelme/screens/homepage.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
AnimationController? controller;
  String token = "false";
  Authserive authService = Authserive();
  bool loginani = false;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  Timer? timer;
  void loginuser()async {
    // authService.Login(usernamecontroller.text, passwordcontroller.text, token,context);
    print("object");
    http.Response res = await http.post(Uri.parse("https://travel-2.onrender.com/newuser"),headers: ({"Content-Type":"application/json"}),body: jsonEncode({"username":usernamecontroller.text,"passwrod":passwordcontroller.text}));
    print(res.body);
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("hack",usernamecontroller.text);

    // print(passwordcontroller.text);

  
 
   Navigator.pushNamed(context, "/home-screen");

   

    
    

    
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 1,child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("images/login.jpg",width:width ,fit: BoxFit.cover,))),
       Text("\nTake Me To The Lakadh",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(10.0),

          child: Column(children:[ SizedBox(height: 40,),TextField(controller: usernamecontroller,decoration: InputDecoration(label: Icon(Icons.electric_bolt),hintText: "Enter Your Username",border: OutlineInputBorder(
            
          )),),SizedBox(height: 20,),TextField(obscureText: true,enableSuggestions: false,controller: passwordcontroller,decoration: InputDecoration(label: Icon(Icons.lock),hintText: "Enter Your Password",border: OutlineInputBorder(
            
          )),),Text("\nForget your password"),Expanded(child: GestureDetector(onTap: (){
           
              
              
              setState(() {
      loginani =true;
    });
      
             loginuser();
            
            
            
            
           
          },child: LottieBuilder.asset(animate: loginani,"images/lottie/java.json",))),] ,),
        ))
      ],),
    );
  }
}