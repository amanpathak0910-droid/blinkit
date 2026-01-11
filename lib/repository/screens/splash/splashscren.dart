import 'dart:async';
import 'package:blinkit_app/domain/constant/appcolors.dart';
import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:blinkit_app/repository/screens/login/loginscreen.dart';
import 'package:flutter/material.dart';

class Splashscren extends StatefulWidget {
  const Splashscren({super.key});

  @override
  State<Splashscren> createState() => _SplashscrenState();
}

class _SplashscrenState extends State<Splashscren> {
  @override
  void initState(){
    Timer(Duration(seconds: 3),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(img:"heroBanner.png"),
          ],
        ),
      ),
    );
  }
}