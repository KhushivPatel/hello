import 'package:e_mart/Consts/consts.dart';
import 'package:e_mart/Consts/list.dart';
import 'package:e_mart/Views/Home_screen/Home.dart';
import 'package:e_mart/Views/auth_screens/signupscreen.dart';
import 'package:e_mart/Widgets_common/applogo_widget.dart';
import 'package:e_mart/Widgets_common/bg_widget.dart';
import 'package:e_mart/Widgets_common/cousto_textfield.dart';
import 'package:e_mart/Widgets_common/out_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return bgwidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: SingleChildScrollView(
                  // Allows scrolling for better view on smaller screens
                  child: Column(
                    children: [
                      // Removed the SizedBox for top spacing
                      applogowidget(),
                      SizedBox(height: 10), // Space between logo and text
                      "Log in to $appname"
                          .text
                          .fontFamily('SansRegular')
                          .color(blackColor)
                          .size(22)
                          .make(),
                      SizedBox(
                          height: 10), // Space between title and text fields
                      Column(
                        children: [
                          customTextfield(
                            title: email,
                            hint: emailHint,
                            controller: _emailController,
                          ),
                          SizedBox(height: 10),
                          customTextfield(
                            title: password,
                            hint: Passwordhint,
                            controller: _passwordController,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: forgetpass.text.color(blackColor).make(),
                            ),
                          ),
                          SizedBox(height: 10),
                          ourbutton(
                            onPress: () {
                              Get.to(() => Home());
                              // Add login logic here
                            },
                            color: blackColor,
                            textcolor: lightbrown,
                            title: login,
                          ).box.width(context.screenWidth - 50).make(),
                          SizedBox(height: 10),
                          Createnewaccount.text.color(blackColor).make(),
                          SizedBox(height: 10),
                          ourbutton(
                            onPress: () {
                              Get.to(() => Signupscreen());
                            },
                            color: lightGrey,
                            textcolor: blackColor,
                            title: Signup,
                          ).box.width(context.screenWidth - 50).make(),
                          SizedBox(height: 10),
                          loginwith.text.color(blackColor).make(),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: lightGrey,
                                  radius: 20,
                                  child: Image.asset(
                                    socialIcons[index],
                                    width: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                          .box
                          .white
                          .rounded
                          .padding(EdgeInsets.all(16))
                          .width(context.screenWidth - 70)
                          .shadowSm
                          .make(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
