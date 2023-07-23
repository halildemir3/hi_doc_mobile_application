import 'package:flutter/material.dart';
import 'package:hi_doc/constant/colors.dart';

class DateElement extends StatelessWidget {
  const DateElement({
    super.key,
    required this.textColor,
    required this.borderColor,
    required this.backGroundColor,
    required this.clock,
  });

  final Color textColor;
  final Color borderColor;
  final Color backGroundColor;
  final String clock;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Container(
        width: 103,
        height: 37,
        decoration: BoxDecoration(
            color: backGroundColor,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          clock,
          style: TextStyle(color: textColor, fontSize: 12),
        )),
      ),
    );
  }
}

