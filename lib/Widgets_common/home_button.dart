import 'package:e_mart/Consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget homebutton(
    {required double height,
    required double width,
    required String icon,
    required String title,
    required VoidCallback onPress}) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      height: height,
      width: width,
      margin:
          EdgeInsets.all(8), // Adding margin to create space between buttons
      padding: EdgeInsets.all(8), // Adding padding inside the button
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, height: height * 0.5), // Using the height parameter
          5.heightBox, // Correct usage for spacing
          title.text
              .fontFamily('desiredFontFamily')
              .color(blackColor)
              .make(), // Correct text method chain
        ],
      ),
    ).box.rounded.color(lightGrey).shadowSm.make(),
  );
}

