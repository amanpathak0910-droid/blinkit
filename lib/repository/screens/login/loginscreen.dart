import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(img: "BlinkitOnboardingScreen.png"),
            SizedBox(height: 4),
            Uihelper.CustomImage(img: "blinkitIcon.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "India’s last minute app",
              color: Color(0xFF000000),
              FontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: "bold",
            ),
            SizedBox(height: 40),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16,),
                  Uihelper.customText(
                    text: "Sujal",
                    color: Color(0xFF000000),
                    FontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: "Regular"
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
