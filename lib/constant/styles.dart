import 'package:flutter/material.dart';

import 'colors.dart';

var texFieldDecoration = InputDecoration(
  hintText: "Search doctor,drungs,articles",hintStyle: TextStyle(fontSize: 12,color: searchTextColor),prefixIcon: Icon(Icons.search),
  isDense: false,contentPadding: EdgeInsets.all(0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);
var texField2Decoration = InputDecoration(
  hintText: " Message",
  isDense: false,contentPadding: EdgeInsets.all(0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);
SizedBox spacer() => SizedBox(height: 20,);
var textStyle16=TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w700);
var textStyle14=TextStyle(
    fontSize: 14,
    color: textColor,
    fontWeight: FontWeight.w700);
var textStyle14white=TextStyle(
    fontSize: 14,
    color: white,
    fontWeight: FontWeight.w700);
var textStyle12=TextStyle(
    fontSize: 12, color: text2Color);
var textStyle12green=TextStyle(
    fontSize: 12, color: green);
var textStyle12_5=TextStyle(fontWeight: FontWeight.w700,
    fontSize: 12, color: textColor);
var textStyle24=TextStyle(
    fontSize: 24,
    color: textColor,
    fontWeight: FontWeight.w700);
var textStyle9=TextStyle(color: green,fontSize: 9);
var textStyle9grey=TextStyle(color: text2Color,fontSize: 9);
