import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart'; // Ensure this import is present if using VelocityX for text styling
import 'package:e_mart/Consts/consts.dart'; // Ensure this import exists and contains the necessary constants

Widget CircularCategory({required String icon, required String title}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Ensures the Column sizes based on its children
        children: [
          CircleAvatar(
            radius: 20, // Adjust radius as needed
            backgroundColor:
                Colors.grey[200], // Background color of the CircleAvatar
            child: ClipOval(
              child: Image.asset(
                icon,
                fit: BoxFit
                    .fill, // Ensures the image fits well within the CircleAvatar
                // Adjust height as needed
              ),
            ),
          ),
          10.heightBox, // Ensure heightBox is imported from VelocityX or use SizedBox(height: 10)
          title.text
              .fontFamily("SansRegular")
              .size(14)
              .color(secondaryfont) // Ensure text color is set
              .make(), // Adjust text styling as needed
        ],
      ),
    ),
  );
}
