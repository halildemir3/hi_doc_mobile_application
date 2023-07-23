import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hi_doc/constant/colors.dart';
import 'package:hi_doc/constant/paths.dart';
import 'package:hi_doc/views/navigation_bar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            color: white,
            image: DecorationImage(
                image: AssetImage(
                  splashImage,
                ),
                fit: BoxFit.fill)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(onTap: ()=>Get.to(Home()),
              child: Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: white),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: white, fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: green,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
