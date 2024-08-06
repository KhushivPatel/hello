import 'package:e_mart/Consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextfield({
  required String title,
  required String hint,
  required TextEditingController controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title ?? "", // Display title if not null, otherwise empty string
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: blackColor,
          fontFamily: 'SansRegular',
          fontSize: 16,
        ),
      ),
      SizedBox(height: 8), // Adding spacing between Text and TextFormField
      Container(
        decoration: BoxDecoration(
          color: lightGrey,
          borderRadius:
              BorderRadius.circular(10), // Adjust the radius as needed
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 12, vertical: 12), // Adjust padding as needed
            hintStyle: const TextStyle(
              fontFamily: 'SansRegular',
              color: fontGrey,
            ),
            hintText:
                hint ?? "", // Display hint if not null, otherwise empty string
            isDense: true,
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
