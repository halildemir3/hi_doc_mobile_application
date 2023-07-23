import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../constant/colors.dart';
import '../constant/paths.dart';
import '../constant/styles.dart';
import '../widgets/doctor_schedude_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Text(
          "Schedude",
          style: textStyle24,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              notification,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
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
                      child: Text("Upcoming"),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: backGround,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text("Complated"),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: backGround,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text("Canceled"),
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: DoctorSchedudeCard(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}


