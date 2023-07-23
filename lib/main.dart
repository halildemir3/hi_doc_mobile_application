import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hi_doc/views/drugs_detail.dart';
import 'package:hi_doc/views/my_cart.dart';
import 'package:hi_doc/views/pharmacy.dart';

import 'package:hi_doc/views/articles.dart';
import 'package:hi_doc/views/doctor_detail.dart';
import 'package:hi_doc/views/navigation_bar.dart';
import 'package:hi_doc/views/splash_screen.dart';
import 'package:hi_doc/views/top_doctor.dart';

import 'constant/lists.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
