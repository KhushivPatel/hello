import 'package:e_mart/Consts/consts.dart';
import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart'; // Ensure this import is added

Widget ourbutton({
  required VoidCallback onPress,
  required Color color,
  required Color textcolor,
  required String title,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
      ),
    ),
    onPressed: onPress,
    child: Text(
      title,
      style: TextStyle(
        color: textcolor,
        fontFamily: 'SansRegular',
        fontSize: 16,
      ),
    ),
  );
}
