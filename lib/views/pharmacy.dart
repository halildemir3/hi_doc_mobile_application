import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/lists.dart';
import 'package:hi_doc/constant/paths.dart';
import 'package:hi_doc/constant/styles.dart';
import 'package:hi_doc/views/drugs_detail.dart';
import 'package:hi_doc/widgets/cta.dart';
import 'package:hi_doc/widgets/serch_bar.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pharmacy", style: textStyle24),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: textColor,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: textColor,
              size: 24,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          _spacer(),
          SearchBar(),
          _spacer(),
          Cta(
            title: "Order quickly with\nPrescription",
            buttonText: 'Upload Prescription',
          ),
          _spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Product",
                style: textStyle16,
              ),
              Text(
                "See all",
                style: textStyle12green,
              )
            ],
          ),
          _spacer(),
          PopularProduct(price: ""),
          _spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product on Sale",
                style: textStyle16,
              ),
              Text(
                "See all",
                style: textStyle12green,
              )
            ],
          ),
          _spacer(), PopularProduct(price: "  22,00"),
        ]),
      ),
    );
  }

  SizedBox _spacer() => SizedBox(
        height: 20,
      );
}

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key, required this.price,
  });
final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      child: ListView.builder(
        itemCount: topDoctor.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(onTap: ()=>Get.to(DrugsDetail()),
            child : Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(11)),
                  width: 120,
                  height: 165,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: CircleAvatar(
                          radius: 25,
                          backgroundColor: circleAvatarBackgroud,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 8),
                          child: Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Panadol",
                                    style: textStyle12_5,
                                  ),
                                  Text(
                                    "20pcs",
                                    style: textStyle9grey,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "15,99",
                                  style: textStyle14,
                                ),Text(
                                  price,
                                  style: TextStyle(decoration: TextDecoration.lineThrough,color: text2Color,fontSize: 9)
                                ),
                              ],
                            ),
                            Icon(
                              Icons.add_box,
                              color: green,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
