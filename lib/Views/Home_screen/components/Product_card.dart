import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:e_mart/Consts/consts.dart'; // Ensure this import exists and contains the color definitions

Widget ProductCard({
  required String title,
  required String price,
  required String
      icon, // Changed from String? to required String to ensure no null value is passed
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: 180, // Adjust the width of the card to avoid overflow
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 4), // Position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              child: Image.asset(
                icon, // Ensure this path is correct and the image exists
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.text
                    .fontFamily("SansRegular")
                    .color(darkFont)
                    .size(14)
                    .bold
                    .make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Ensure the row children are spaced out
                  children: [
                    "\$${price}"
                        .text
                        .fontFamily("SansRegular")
                        .color(blackColor)
                        .fontWeight(FontWeight.bold)
                        .size(16)
                        .make(),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Define your onPressed action here
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                        color: whiteColor,
                      ), // Adjust icon size
                      label: "Add"
                          .text
                          .size(14)
                          .color(whiteColor)
                          .fontWeight(FontWeight.bold)
                          .make(), // Adjust text size
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondarycolor, // Button color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8), // Adjust padding
                        textStyle:
                            const TextStyle(fontSize: 12), // Adjust text size
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
