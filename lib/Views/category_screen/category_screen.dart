import 'package:e_mart/Consts/consts.dart';
import 'package:e_mart/Widgets_common/category.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return cate(
      child: Scaffold(
          appBar: AppBar(
        title: categoryLabel.text.black.make(),
      )),
    );
  }
}
