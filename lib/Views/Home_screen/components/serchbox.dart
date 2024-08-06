import 'package:e_mart/Consts/consts.dart';

Widget serchbox() {
  return Container(
    alignment: Alignment.center,
    height: 60,

    // color: primarycolor,
    child: TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search),
        filled: true,
        fillColor: whiteColor,
        hintText: serchingthing,
        hintStyle: TextStyle(color: fontGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    ),
  );
}
