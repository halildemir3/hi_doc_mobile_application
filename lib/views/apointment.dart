import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/lists.dart';
import 'package:hi_doc/constant/paths.dart';
import 'package:hi_doc/constant/styles.dart';

class Apointment extends StatelessWidget {
  const Apointment({Key? key, required this.object}) : super(key: key);
  final Doctor object;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          "Apointment",
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
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          doctorCard(object: object),
          Container(
            height: 65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Date", style: textStyle16),
                    Text(
                      "Change",
                      style: textStyle12,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        child: SvgPicture.asset(calenderActive),
                        backgroundColor: backGround,
                        radius: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Wednesday,Jun 23 2021",
                          style: textStyle14,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 2,
                            height: 14,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "10:00 AM",
                          style: textStyle14,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          HorizontalLine(),
          Container(
            height: 65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reason", style: textStyle16),
                    Text(
                      "Change",
                      style: textStyle12,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        child: SvgPicture.asset(editSquare),
                        backgroundColor: backGround,
                        radius: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Chest pain",
                          style: textStyle14,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          HorizontalLine(),
          Text(
            "Payment Detail",
            style: textStyle16,
          ),
          SizedBox(
            height: 44,
          ),
          companenet(
            name: "Consulation",
            price: "60,00",
            textStyle: textStyle12_5,
          ),
          _spacer(),
          companenet(
            name: "Admin Free",
            price: "01,00",
            textStyle: textStyle12_5,
          ),
          _spacer(),
          companenet(
            name: "Aditional Discount",
            price: "-",
            textStyle: textStyle12_5,
          ),
          _spacer(),
          companenet(
            name: "Total",
            price: "61,00",
            textStyle: textStyle14,
          ),
          HorizontalLine(),
          Text(
            "Payment Method",
            style: textStyle16,
          ),_spacer(),
          Container(padding: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: backGround),
                borderRadius: BorderRadius.circular(12)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "VISA",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                ),
                Text("Change",style: textStyle12,)
              ],
            ),
          )
        ]),
      ), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,


        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),) ,
                height: 50,
                width: 50,child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Total",style: textStyle12,),Text("61,00",style: textStyle16,)],)
            ),
            Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: green) ,
              height: 50,
              width: 190,child: Center(child: Text("Booking",style: TextStyle(color: white,fontSize:14,fontWeight: FontWeight.bold ),)),
            )
          ],
        ),
      ),

    );
  }

  SizedBox _spacer() => SizedBox(
        height: 12,
      );
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

class doctorCard extends StatelessWidget {
  const doctorCard({
    super.key,
    required this.object,
  });

  final Doctor object;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: backGround)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2, right: 18),
            child: Container(
              height: 111,
              width: 111,
              decoration: BoxDecoration(
                  color: grey, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                object.name,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                object.branche,
                style: TextStyle(fontSize: 12, color: text2Color),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 18,
                width: 41,
                color: greyWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star,
                      color: green,
                      size: 13,
                    ),
                    Text(
                      object.score,
                      style: TextStyle(color: green, fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: text2Color,
                        size: 13,
                      ),
                      Text(
                        "${object.distance} Away",
                        style: TextStyle(fontSize: 12, color: text2Color),
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
