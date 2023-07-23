import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/views/articles.dart';
import 'package:hi_doc/views/top_doctor.dart';

import '../constant/colors.dart';
import '../constant/paths.dart';
import '../constant/styles.dart';
import '../widgets/cta.dart';
import '../widgets/doctor_items_widget.dart';
import '../widgets/serch_bar.dart';
import 'menu_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "Find your desire\nhealt solution",
          style: textStyle24,
        ),
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              notification,
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SearchBar(),
            spacer(),
            MenuBarItem(),

            spacer(),
            Cta(title: "Early protection for\nyour family desire",buttonText:"Learn more", ),
            spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Doctor",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                ),spacer(),
                GestureDetector(onTap: (){Get.to(TopDoctor());},
                  child: Text(
                    "See all",
                    style: TextStyle(color: green, fontSize: 12),
                  ),
                ),
              ],
            ),
            spacer(),
            DoctorItem(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Health Articles",
                  style: textStyle16,
                ),
                GestureDetector(onTap: ()=>Get.to(Articles()),
                  child: Text(
                    "See all",
                    style: textStyle12green,
                  ),
                )
              ],
            ), RelatedArticles(),
          ],
        ),
      ),
    );
  }
}
