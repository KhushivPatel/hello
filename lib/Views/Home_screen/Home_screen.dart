import 'package:e_mart/Consts/consts.dart';
import 'package:e_mart/Consts/list.dart';
import 'package:e_mart/Views/Home_screen/components/Product_card.dart';
import 'package:e_mart/Views/Home_screen/components/circular_category.dart';
import 'package:e_mart/Views/Home_screen/components/serchbox.dart';
import 'package:e_mart/Widgets_common/home_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(color: secondaryfont),
          // padding: const EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              serchbox(),
              const SizedBox(height: 12),
              // Swiper
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: featurecategories.text
                            .color(blackColor)
                            .size(16)
                            .fontFamily("SansRegular")
                            .make(),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              8,
                              (index) => CircularCategory(
                                  icon: circularimage[index],
                                  title: circulartitle[index])),
                        ),
                      ),
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 200,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        itemCount: Sliderslist.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            Sliderslist[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 7))
                              .make();
                        },
                      ).py12(),

                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          2,
                          (index) => homebutton(
                            height: context.screenHeight * 0.1,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? tag : sale,
                            title: index == 0 ? todaydeal : flashsale,
                            onPress: () {
                              // Handle button press
                            },
                          ),
                        ),
                      ),
                      10.heightBox,
                      Container(
                        decoration: BoxDecoration(
                            // color: const Color.fromARGB(59, 158, 158, 158),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Products.text
                                    .fontFamily("SansRegular")
                                    .fontWeight(FontWeight.bold)
                                    .color(primaryfont)
                                    .size(22)
                                    .make(),
                              ),
                            ),
                            10.heightBox,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  8,
                                  (index) => ProductCard(
                                      icon: productimage[index],
                                      title: product1[index],
                                      price: price2[index]),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      20.heightBox,
                      // swiper2
                      VxSwiper.builder(
                        aspectRatio: 16 / 9, // Aspect ratio of the swiper
                        autoPlay: true, // Automatic slide transition
                        height: 170, // Height of the swiper
                        enlargeCenterPage: true, // Enlarge the center page
                        itemCount: Sliderslist2.length, // Number of images
                        itemBuilder: (context, index) {
                          return Image.asset(
                            Sliderslist2[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.only(left: 40))
                              .make();
                        },
                      ).py12(),

                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          3,
                          (index) => homebutton(
                            height: context.screenHeight * 0.1,
                            width: context.screenWidth / 4,
                            icon: index == 0
                                ? menu
                                : index == 1
                                    ? brand1
                                    : sale1,
                            title: index == 0
                                ? topcategories
                                : index == 1
                                    ? brand
                                    : topsaller,
                            onPress: () {
                              // Handle button press
                            },
                          ),
                        ),
                      ),
                      // featured categories

                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: List.generate(
                      //       4,
                      //       (index) => FeaturedButton(
                      //         icon: Featuredimages1[index],
                      //         title: Featuredtitle1[index],
                      //       ),
                      //     ).toList(),
                      //   ),
                      // ),
                      20.heightBox,
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: List.generate(
                      //       4,
                      //       (index) => FeaturedButton(
                      //         icon: Featuredimages2[index],
                      //         title: Featuredtitle2[index],
                      //       ),
                      //     ).toList(),
                      //   ),
                      // ),
                      // product
                      20.heightBox,

                      Container(
                        decoration: BoxDecoration(
                          color: blackColor,
                          // borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Products.text.white.size(18).make(),
                            10.heightBox,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    8,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              img1,
                                              width: 150,
                                              fit: BoxFit.cover,
                                            ),
                                            10.heightBox,
                                            "laptop 4GB"
                                                .text
                                                .color(darkFont)
                                                .make(),
                                            10.heightBox,
                                            "\$600"
                                                .text
                                                .color(blackColor)
                                                .size(16)
                                                .make()
                                          ],
                                        )
                                            .box
                                            .white
                                            .margin(EdgeInsets.symmetric(
                                                horizontal: 10))
                                            .roundedSM
                                            .padding(EdgeInsets.all(10))
                                            .make()),
                              ),
                            )
                          ],
                        ),
                      ),
                      20.heightBox,
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 200,
                        enlargeCenterPage: true,
                        // viewportFraction: 1.0,
                        itemCount: Sliderslist.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            Sliderslist[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 7))
                              .make();
                        },
                      ).py12(),
                      20.heightBox,

                      GridView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  mainAxisExtent: 250),
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  img1,
                                  width: 170,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "laptop 4GB".text.color(darkFont).make(),
                                10.heightBox,
                                "\$600".text.color(blackColor).size(16).make()
                              ],
                            ).box.white.roundedSM.make();
                          })
                      // all product page
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
