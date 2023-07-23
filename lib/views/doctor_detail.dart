import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/lists.dart';
import 'package:hi_doc/constant/paths.dart';
import 'package:hi_doc/constant/styles.dart';
import 'package:hi_doc/views/apointment.dart';
import 'package:hi_doc/views/chet_page.dart';
import 'package:hi_doc/widgets/date_elements.dart';

import '../constant/colors.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({
    Key? key,
    required this.object,
  }) : super(key: key);
  final Doctor object;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          "Doctor detail",
          style: textStyle24
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.more_vert,
              color: textColor,
              size: 24,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 334,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
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
                                style:
                                    TextStyle(fontSize: 12, color: text2Color),
                              )
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
            AboutWidget(),
            DateWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Container(
                height: 1,
                width: 334,
                color: greyWhite,
              ),
            ),
            DatesWidget(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,


        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(onTap: ()=>Get.to(ChatPage(name: object.name,)),
              child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: backGround) ,
                height: 50,
                width: 50,child: Icon(Icons.chat_bubble_outline_rounded,color:green ,)
              ),
            ),
            GestureDetector(onTap: ()=>Get.to(Apointment(object: object)),
              child : Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(8),color: green) ,
                height: 50,
                width: 266,child: Center(child: Text("Book Apointment",style: TextStyle(color: white,fontSize:14,fontWeight: FontWeight.bold ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DatesWidget extends StatelessWidget {
  const DatesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 141,
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: borderColor,
            clock: "09:00 AM",
            textColor: textColor,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: border2Color,
            clock: "10:00 AM",
            textColor: border2Color,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: borderColor,
            clock: "11:00 PM",
            textColor: textColor,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: borderColor,
            clock: "01:00 PM",
            textColor: textColor,
          ),
          DateElement(
            backGroundColor: green,
            borderColor: Colors.transparent,
            clock: "02:00 PM",
            textColor: white,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: border2Color,
            clock: "03:00 PM",
            textColor: border2Color,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: borderColor,
            clock: "04:00 PM",
            textColor: textColor,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: border2Color,
            clock: "07:00 PM",
            textColor: border2Color,
          ),
          DateElement(
            backGroundColor: Colors.transparent,
            borderColor: borderColor,
            clock: "08:00 PM",
            textColor: textColor,
          ),
        ],
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      child: ListView.builder(
        itemCount: days.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: days[index].isChecked == true
                      ? green
                      : Colors.transparent,
                  border: Border.all(
                      color: days[index].isChecked == false
                          ? greyWhite
                          : Colors.transparent),
                  borderRadius: BorderRadius.circular(10)),
              width: 46,
              height: 64,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    days[index].day,
                    style: TextStyle(
                      fontSize: 10,
                      color: days[index].isChecked == true ? white : textColor,
                    ),
                  ),
                  Text(
                    days[index].date,
                    style: TextStyle(
                        fontSize: 18,
                        color:
                            days[index].isChecked == true ? white : textColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        width: 334,
        height: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Text(
              abouttext,
              style: TextStyle(fontSize: 12, color: searchTextColor),
            )
          ],
        ),
      ),
    );
  }
}

String abouttext =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... Read more";
