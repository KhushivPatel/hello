import 'package:e_mart/Consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget FeaturedButton({String? title, String? icon}) {
  return Row(
    children: [
      if (icon != null)
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            icon,
            fit: BoxFit.cover, // Change to cover to maintain aspect ratio
          ),
        ),
      if (icon != null) 10.widthBox,
      if (title != null)
        Flexible(
          child: title.text
              .fontFamily("SansRegular")
              .fontWeight(FontWeight.bold) // Set the font weight
              .color(darkFont)
              .make(),
        ),
    ],
  )
      .box
      .width(200)
      .roundedSM // Add rounded corners
      .margin(const EdgeInsets.symmetric(horizontal: 10))
      .gray100
      .padding(const EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
