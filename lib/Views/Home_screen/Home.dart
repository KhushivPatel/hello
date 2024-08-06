import 'package:e_mart/Controller/Home_Controller.dart';
import 'package:e_mart/Views/Account_screen/account_screen.dart';
import 'package:e_mart/Views/Home_screen/Home_Screen.dart';
import 'package:e_mart/Views/cart_screen/Cart_Screen.dart';
import 'package:e_mart/Views/category_screen/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/Consts/consts.dart';
import 'package:e_mart/Consts/images.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
// calling home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(
          home1,
          width: 24,
          height: 24,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          category,
          width: 24,
          height: 24,
        ),
        label: categoryLabel,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          cart,
          width: 24,
          height: 24,
        ),
        label: cartLabel,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          account,
          width: 24,
          height: 24,
        ),
        label: accountLabel,
      ),
    ];

    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      AccountScreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: blackColor,
          selectedLabelStyle:
              const TextStyle(fontSize: 14, fontFamily: (' sans_bold')),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (Value) {
            controller.currentNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}
