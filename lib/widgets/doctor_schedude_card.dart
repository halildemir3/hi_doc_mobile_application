import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../constant/paths.dart';
import '../constant/styles.dart';

class DoctorSchedudeCard extends StatelessWidget {
  const DoctorSchedudeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          height: 180,
          width: double.maxFinite,
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          " Marcus Horizon",
                          style: textStyle16,
                        ),
                        Text(
                          "Chardiologist",
                          style: textStyle12,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: circleAvatarBackgroud,
                      radius: 23,
                    )
                  ],
                ),
              ),SizedBox(height: 32,),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, left: 12),
                          child: SvgPicture.asset(
                            calender,
                            width: 15,
                            height: 15,
                          ),
                        ),
                        Text("01/05/2022")
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, left: 12),
                          child: SvgPicture.asset(time),
                        ),
                        Text("17:30 AM")
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, left: 12),
                          child: CircleAvatar(
                            backgroundColor: green2,
                            radius: 3,
                          ),
                        ),
                        Text("Confirmed")
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 46,
                    width: 145,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: greyWhite),
                    child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: textColor),
                        )),
                  ),SizedBox(width: 15,),
                  Container(
                    height: 46,
                    width: 145,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: green),
                    child: Center(
                        child: Text(
                          "Reschedule",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: textColor),
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }
}