import 'package:e_mart/Consts/consts.dart';
import 'package:e_mart/Views/auth_screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart'; // Ensure you have the velocity_x package added to pubspec.yaml

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Creating a method to change the screen
  void changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => Loginscreen());
    });
  }

  // Calling the function
  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/splash.png'), // Ensure this matches the actual path and filename
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        applogo,
                        color:
                            blackColor, // Set the color of the image to blackColor
                      ),
                      SizedBox(height: 10),
                      appname.text
                          .fontFamily('SansRegular')
                          .size(20)
                          .color(blackColor) // Set the text color to blackColor
                          .make(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30), // Spacer replaced with SizedBox for spacing
              credits.text
                  .color(blackColor)
                  .fontFamily('SansRegular')
                  .make(), // Set the text color to blackColor
            ],
          ),
        ),
      ),
    );
  }
}
