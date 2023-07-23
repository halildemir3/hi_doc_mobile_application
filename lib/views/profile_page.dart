import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../constant/paths.dart';
import '../constant/styles.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset(
              threePoint,
            ),
          ),
        ],
        backgroundColor: green,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: circleAvatarBackgroud,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 10,
                            color: green,
                          ),
                          radius: 8,
                          backgroundColor: white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Amelia Renata",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white),
              ),SizedBox(
                height: 20,
              ),
              Container(width: 290,height: 71,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          heartBeat,
                        ),
                        Text(
                          "Heart rate",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: text3Color),
                        ),
                        Text(
                          "215bpm",
                          style: TextStyle(fontWeight: FontWeight.w700,color: white,fontSize: 16),
                        )
                      ],
                    ),Container(height: 40,width: 1,color: white,),
                    Column(
                      children: [
                        SvgPicture.asset(
                          fire,
                        ),
                        Text(
                          "Calories",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: text3Color),
                        ),
                        Text(
                          "756cal",
                          style: TextStyle(fontWeight: FontWeight.w700,color: white,fontSize: 16),
                        )
                      ],
                    ),Container(height: 40,width: 1,color: white,),
                    Column(
                      children: [
                        SvgPicture.asset(
                          barbel,
                        ),
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: text3Color),
                        ),
                        Text(
                          "103Ibs",
                          style: TextStyle(fontWeight: FontWeight.w700,color: white,fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: greyWhite,
                  radius: 21,
                  child: SvgPicture.asset(
                    heart,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Saved",
                      style: textStyle16,
                    ),
                    SvgPicture.asset(
                      arrow,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: greyWhite,
                  radius: 21,
                  child: SvgPicture.asset(
                    documant,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Appointmnet ",
                      style: textStyle16,
                    ),
                    SvgPicture.asset(
                      arrow,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: greyWhite,
                  radius: 21,
                  child: SvgPicture.asset(
                    walet,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style: textStyle16,
                    ),
                    SvgPicture.asset(
                      arrow,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: greyWhite,
                  radius: 21,
                  child: SvgPicture.asset(
                    chat,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "FAQs",
                      style: textStyle16,
                    ),
                    SvgPicture.asset(
                      arrow,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: greyWhite,
                  radius: 21,
                  child: SvgPicture.asset(
                    danger,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Help",
                      style: textStyle16,
                    ),
                    SvgPicture.asset(
                      arrow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        alignment: Alignment.bottomCenter,
        width: double.maxFinite,
        height: 460,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
