import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/paths.dart';
import 'package:hi_doc/constant/styles.dart';
import 'package:hi_doc/views/my_cart.dart';

class DrugsDetail extends StatelessWidget {
  const DrugsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text("Drugs Detail", style: textStyle24),
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
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Center(
              child: CircleAvatar(
                radius: 62,
                backgroundColor: circleAvatarBackgroud,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 140,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "OBH Combi",
                        style: textStyle16.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "75ml",
                          style: textStyle16.copyWith(color: text2Color),
                        ),
                        SvgPicture.asset(heartRed)
                      ],
                    ),
                  ),  
                  ScoreTab(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "1",
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
                      Text(
                        "9.99",
                        style: textStyle16.copyWith(fontSize: 26),
                      )
                    ],
                  ),

                ],
              ),
            ), Container(
              height: 110,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Description",
                      style: textStyle16,
                    ),
                  ),
                  Text(
                    text,
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


        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: backGround) ,
                  height: 50,
                  width: 50,child: Icon(Icons.shopping_cart_outlined,color:green ,)
              ),
            ),
            GestureDetector(onTap: (){Get.to(MyCart());},
              child : Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: green) ,
                height: 50,
                width: 266,child: Center(child: Text("Buy Now",style: TextStyle(color: white,fontSize:14,fontWeight: FontWeight.bold ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScoreTab extends StatelessWidget {
  const ScoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: green,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: green,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: green,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: green,
        ),
        Text(
          "4.0",
          style: textStyle14.copyWith(color: green),
        )
      ],
    );
  }
}

var text =
    "OBH COMBI  is a cough medicine containing, Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing... Read more";
