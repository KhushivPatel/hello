import 'package:e_mart/Consts/consts.dart';

Widget bgwidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        //   color: Colors.black,
        // ),

        image:
            DecorationImage(image: AssetImage(background), fit: BoxFit.fill)),
    child: child,
  );
}
