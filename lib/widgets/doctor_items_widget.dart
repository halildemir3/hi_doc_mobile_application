import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../constant/lists.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173,
      child: ListView.builder(
        itemCount: topDoctor.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(11)),
                width: 121,
                height: 173,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: circleAvatarBackgroud,
                      radius: 40,
                    ),
                    _spacer(),
                    Text(
                      topDoctor[index].name,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: textColor),
                    ),
                    Text(
                      topDoctor[index].branche,
                      style: TextStyle(fontSize: 9, color: text2Color),
                    ),
                    _spacer(),
                    _spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(height: 13,width: 29,color: greyWhite,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: green,
                                  size: 10,
                                ),
                                Text(
                                 topDoctor[index].score,
                                  style: TextStyle(color: green,fontSize: 8),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 10,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: text2Color,
                                  size: 10,
                                ),
                                Text(
                                  "${topDoctor[index].distance} away",
                                  style:
                                      TextStyle(fontSize: 8, color: text2Color),
                                )
                              ]),
                        )
                      ],
                    )
                  ],
                ),
              ));
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  SizedBox _spacer() => SizedBox(
        height: 5,
      );
}
