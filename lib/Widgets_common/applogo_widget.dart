import 'package:e_mart/Consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

Widget applogowidget() {
  return Image.asset(
    applogo,
    color: whiteColor,
  )
      .box
      .color(blackColor)
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
