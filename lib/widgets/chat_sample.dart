import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/styles.dart';


class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80,top: 20),
          child: ClipPath(
            //clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: green,  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),),
              child: Text(
                "Hi, Developer How Are you?",
                style: textStyle16,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 100, top: 20),
          child: ClipPath(
            //clipper: LowerNipMessageClipper(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
              decoration: BoxDecoration(
                color: greyWhite,

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Text(
                "Hello Programmer ı am fine thanks for asking what about you. i hope you will be fine",
                style: textStyle16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
