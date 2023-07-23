import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/lists.dart';


import '../constant/colors.dart';
import '../constant/paths.dart';
import '../constant/styles.dart';
import 'chet_page.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "Message",
          style: textStyle24,
        ),
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              search,
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              height: 46,
              decoration: BoxDecoration(
                  color: backGround, borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: green, borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text("All"),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: backGround,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text("Group"),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: backGround,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text("Private"),
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount:topDoctor.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(onTap:()=>Get.to(ChatPage(name: topDoctor[index].name,)),
                          child: Container(
                            height: 50,
                            width: double.maxFinite,
                            //color: green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: circleAvatarBackgroud,
                                      radius: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            topDoctor[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: textColor),
                                          ),
                                          Text(
                                            "Hello how i can help you",
                                            style: textStyle12,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "09:36",
                                      style: TextStyle(
                                          fontSize: 12, color: textColor),
                                    ),
                                    Icon(
                                      Icons.check_circle_outline,
                                      size: 15,
                                      color: text2Color,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(chat,color: white,),
        backgroundColor: green,
      ),
    );
  }
}
