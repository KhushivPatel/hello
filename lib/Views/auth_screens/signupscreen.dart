import 'package:e_mart/Consts/consts.dart';
import 'package:e_mart/Widgets_common/applogo_widget.dart';
import 'package:e_mart/Widgets_common/bg_widget.dart';
import 'package:e_mart/Widgets_common/cousto_textfield.dart';
import 'package:e_mart/Widgets_common/out_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypePasswordController =
      TextEditingController();

  bool _isAgreed = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _retypePasswordController.dispose();
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
              SizedBox(height: 30),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  // Allows scrolling for better view on smaller screens
                  child: Column(
                    children: [
                      // Space at the top
                      applogowidget(),
                      SizedBox(height: 10), // Space between logo and text
                      "Sign up to $appname"
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
                            title: name,
                            hint: namehint,
                            controller: _nameController,
                          ),
                          const SizedBox(height: 5),
                          customTextfield(
                            title: email,
                            hint: emailHint,
                            controller: _emailController,
                          ),
                          const SizedBox(height: 5),
                          customTextfield(
                            title: password,
                            hint: Passwordhint,
                            controller: _passwordController,
                          ),
                          const SizedBox(height: 5),
                          customTextfield(
                            title: retypepassword,
                            hint: Passwordhint,
                            controller: _retypePasswordController,
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: forgetpass.text.color(blackColor).make(),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: blackColor,
                                checkColor: lightbrown,
                                value: _isAgreed,
                                onChanged: (newValue) {
                                  setState(() {
                                    _isAgreed = newValue ?? false;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "I agree to the ",
                                        style: TextStyle(
                                          fontFamily: 'SansRegular',
                                          color: fontGrey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: termsandcondition,
                                        style: TextStyle(
                                          fontFamily: 'SansRegular',
                                          color: blackColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " & ",
                                        style: TextStyle(
                                          fontFamily: 'SansRegular',
                                          color: fontGrey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: privacypolicy,
                                        style: TextStyle(
                                          fontFamily: 'SansRegular',
                                          color: blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          ourbutton(
                            onPress: () {
                              // Add sign up logic here
                            },
                            color: _isAgreed ? blackColor : lightGrey,
                            textcolor: blackColor,
                            title: Signup,
                          ).box.width(context.screenWidth - 50).make(),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Get.back(); // Go back to the previous screen
                            },
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: alreadyhaveaccount,
                                    style: TextStyle(
                                      fontFamily: 'SansRegular',
                                      color: fontGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: login,
                                    style: TextStyle(
                                      fontFamily: 'SansRegular',
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                          .box
                          .white
                          .rounded
                          .padding(EdgeInsets.all(10))
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
