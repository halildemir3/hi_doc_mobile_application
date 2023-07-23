import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/paths.dart';

import 'package:hi_doc/constant/styles.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: textStyle24,
        ),
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
        elevation: 0,
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_spacer(),
            DrugsCart(name: "OBH Combi",cc: "75ml",price: "9.99",count: "1"),_spacer(),
            DrugsCart(name: "Panadol",cc: "20pcs",price: "15.99",count: "2"),_spacer(),
            Text(
              "Payment Detail",
              style: textStyle16,
            ),
            _spacer(),
            companenet(
              name: "Subtotal",
              price: "25.98",
              textStyle: textStyle12_5,
            ),
            _spacer(),
            companenet(
              name: "Taxes",
              price: "1.00",
              textStyle: textStyle12_5,
            ),
            _spacer(),
            companenet(
              name: "Total",
              price: "26,98",
              textStyle: textStyle14,
            ),
            _spacer(),
            HorizontalLine(),
            Text(
              "Payment Method",
              style: textStyle16,
            ),
            _spacer(),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: backGround),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "VISA",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Change",
                    style: textStyle12,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 50,
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: textStyle12,
                    ),
                    Text(
                      "26,98",
                      style: textStyle16,
                    )
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: green),
              height: 50,
              width: 190,
              child: Center(
                  child: Text(
                "Checkout",
                style: TextStyle(
                    color: white, fontSize: 14, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _spacer() => SizedBox(
        height: 15,
      );
}

class DrugsCart extends StatelessWidget {
  const DrugsCart({
    super.key, required this.name, required this.cc, required this.price, required this.count,
  });
  final String name;
  final String cc;
  final String price;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: backGround)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: circleAvatarBackgroud,
            ),SizedBox(width: 30,),
            Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        name,
                        style: textStyle16.copyWith(fontSize: 20),
                      ),SizedBox(width: 80,),
                      SvgPicture.asset(delete),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        cc,
                        style: textStyle16.copyWith(color: text2Color),
                      ),
                    ],
                  ), Row(

                    children: [
                      Row(
                        children: [
                          Container(
                            height: 1,
                            width: 13,
                            color: searchTextColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 20, left: 20),
                            child: Text(
                              count,
                              style: textStyle24,
                            ),
                          ),
                          Icon(
                            Icons.add_box,
                            size: 32,
                            color: green,
                          ),
                        ],
                      ),
                      SizedBox(width: 50,),
                      Text(
                        price,
                        style: textStyle16.copyWith(fontSize: 26),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class companenet extends StatelessWidget {
  const companenet({
    super.key,
    required this.name,
    required this.price,
    required this.textStyle,
  });

  final String name;
  final String price;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: textStyle,
        ),
        Text(
          price,
          style: textStyle,
        )
      ],
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: Container(
        height: 1,
        color: cta,
      ),
    );
  }
}
