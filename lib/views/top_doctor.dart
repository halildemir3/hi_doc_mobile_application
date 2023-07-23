import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/lists.dart';
import 'package:hi_doc/constant/styles.dart';
import 'package:hi_doc/views/doctor_detail.dart';

class TopDoctor extends StatelessWidget {
  const TopDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          "Top Doctor",
          style: textStyle24
        ),
        centerTitle: true,
        leading: GestureDetector(onTap: (){Get.back();},
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
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 20),
          child:
              ListView.builder(itemCount:topDoctor.length,itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: GestureDetector(onTap: (){Get.to(DoctorDetail(object: topDoctor[index]));},
                child: Container(
                  width: 334,
                  height: 125,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: backGround)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2,right: 18),
                        child: Container(
                          height: 111,
                          width: 111,
                          decoration: BoxDecoration(
                              color: grey, borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            topDoctor[index].name,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: textColor),
                          ),SizedBox(height: 4,),
                          Text(
                            topDoctor[index].branche,
                            style: TextStyle(fontSize: 12, color: text2Color),
                          ),SizedBox(height: 15,),
                          Container(height: 18,width: 41,color: greyWhite,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: green,
                                  size: 13,
                                ),
                                Text(
                                  topDoctor[index].score,
                                  style: TextStyle(color: green,fontSize: 12),
                                )
                              ],
                            ),
                          ),SizedBox(height: 8,),
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
                                    "${topDoctor[index].distance} Away",
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
              ),
            );
          })),
    );
  }
}
