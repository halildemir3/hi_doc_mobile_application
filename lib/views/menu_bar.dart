import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hi_doc/views/articles.dart';
import 'package:hi_doc/views/pharmacy.dart';
import 'package:hi_doc/views/top_doctor.dart';

import '../constant/colors.dart';
import '../constant/paths.dart';

class MenuBarItem extends StatelessWidget {
  const MenuBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
      GestureDetector(onTap: (){Get.to(TopDoctor());},
        child: Container(width: 71,height: 71,
          decoration: BoxDecoration(borderRadius:
          BorderRadius.circular(15),color: green),
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(doctor,

            ),
          ), ),
      ),
      GestureDetector(onTap: (){Get.to(Pharmacy());},
        child: Container(width: 71,height: 71,
          decoration: BoxDecoration(borderRadius:
          BorderRadius.circular(15),color: green),
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(medicine,

            ),
          ), ),
      ),
      Container(width: 71,height: 71,
        decoration: BoxDecoration(borderRadius:
        BorderRadius.circular(15),color: green),
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(ambulance,

          ),
        ), ),
      GestureDetector(onTap: (){Get.to(Articles());},
        child: Container(width: 71,height: 71,
          decoration: BoxDecoration(borderRadius:
          BorderRadius.circular(15),color: green),
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(article,width: 35,height: 35,

            ),
          ), ),
      ),
    ],);
  }
}