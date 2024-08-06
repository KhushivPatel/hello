import 'package:e_mart/Consts/consts.dart';

Widget cate({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        //   color: Colors.black,
        // ),

        image: DecorationImage(image: AssetImage(bgblue), fit: BoxFit.fill)),
    child: child,
  );
}
