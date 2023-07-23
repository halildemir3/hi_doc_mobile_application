import 'package:flutter/material.dart';


import '../constant/colors.dart';
import '../constant/styles.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      height: 65,
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50,width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                color: searchWhite,),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextFormField(decoration: texField2Decoration,textAlign:TextAlign.start ,mouseCursor: MouseCursor.uncontrolled),
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 110,
              child: Text(
                "Send",
                style: TextStyle(color: white, fontWeight: FontWeight.w700,fontSize: 14),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: green),
            ),
          )
        ],
      ),
    );
  }
}
